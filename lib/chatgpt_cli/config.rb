# frozen_string_literal: true

require 'cli/ui'
require 'yaml'
require 'yaml/store'

module ChatgptCli
  class Config
    CONFIG_PATH = "#{Dir.home}/.chatgpt-cli".freeze

    def initialize
      unless File.exist? CONFIG_PATH
        File.new(CONFIG_PATH, 'w')
        update_config
      end
      @config = load_config
    end

    def api_key
      @config['api_key']
    end

    private

    def load_config
      YAML.load_file(CONFIG_PATH)
    end

    def update_config
      api_key = CLI::UI.ask('Enter your OpenAI API Key.')
      store = YAML::Store.new CONFIG_PATH
      store.transaction do
        store['api_key'] = api_key
      end
    end
  end
end
