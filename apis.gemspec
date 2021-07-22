# frozen_string_literal: true

require_relative "lib/apis/version"

Gem::Specification.new do |spec|
  spec.name          = "apis"
  spec.version       = Apis::VERSION
  spec.authors       = ["ashvini bhosale"]
  spec.email         = ["ashumbhosale@gmail.com"]

  spec.summary       = "Write a short summary, because RubyGems requires one."
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "https://github.com"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com"
  spec.metadata["source_code_uri"] = "https://github.com"
  spec.metadata["changelog_uri"] = "https://github.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ["lib/apis.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "rest-client"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
