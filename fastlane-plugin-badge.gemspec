# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/badge/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-badge'
  spec.version       = Fastlane::Badge::VERSION
  spec.author        = %q{Daniel Griesser}
  spec.email         = %q{daniel.griesser.86@gmail.com}

  spec.summary       = %q{Add a badge overlay to your app icon}
  spec.homepage      = "https://github.com/HazAT/fastlane-plugin-badge"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'badge', '~> 0.8.2'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.0.3'
end
