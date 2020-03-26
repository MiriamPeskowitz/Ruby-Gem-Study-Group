require_relative 'lib/covid/version'

Gem::Specification.new do |spec|
  spec.name          = "covid"
  spec.version       = Covid::VERSION
  spec.authors       = ["MiriamPeskowitz"]
  spec.email         = ["miriam5000@gmail.com"]

  spec.summary       = %q{"covid.gemspec"}
  spec.description   = %q{"covid"}
  spec.homepage      = "https://github.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = "https://github.com"
  spec.metadata["source_code_uri"] = "https://github.com/miriampeskowitz"
  spec.metadata["changelog_uri"] = "https://github.com/miriampeskowitz/covid"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'nokogiri'
  spec.add_development_dependency 'pry'
end
