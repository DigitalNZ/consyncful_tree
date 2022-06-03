# frozen_string_literal: true

require_relative "lib/consyncful/tree/version"

Gem::Specification.new do |spec|
  spec.name = "consyncful-tree"
  spec.version = Consyncful::Tree::VERSION
  spec.authors = ["DigitalNZ"]
  spec.email = ["info@digitalnz.org"]

  spec.summary = "Code to help with adding a tree structure to Contentful models."
  spec.description = "Code to help with adding a tree structure to Contentful models."
  spec.homepage = "https://github.com/DigitalNZ/consyncful-tree"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DigitalNZ/consyncful-tree"
  spec.metadata["changelog_uri"] = "https://github.com/DigitalNZ/consyncful-tree/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end