# frozen_string_literal: true

require_relative 'lib/sawara/version'

Gem::Specification.new do |spec|
  spec.name = 'sawara'
  spec.version = Sawara::VERSION
  spec.authors = ['yocajii']
  spec.email = ['yocajii@stone.sakura.ne.jp']

  spec.summary = 'This is ChatGPT CLI.'
  spec.description = 'Use ChatGPT in Terminal via OpenAI API.'
  spec.homepage = 'https://github.com/yocajii/sawara'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['allowed_push_host'] = 'TODO: Set to your gem server \'https://example.com\''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/yocajii/sawara'
  spec.metadata['changelog_uri'] = 'https://github.com/yocajii/sawara/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
