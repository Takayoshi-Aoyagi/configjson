# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'configjson/version'

Gem::Specification.new do |spec|
  spec.name          = "configjson"
  spec.version       = Configjson::VERSION
  spec.authors       = ["Takayoshi Aoyagi"]
  spec.email         = ["takayoshi.aoyagi@gmail.com"]
  spec.summary       = "Configure your ruby applications with JSON"
  spec.description   = "config-json organizes hierarchical configurations for your app deployments"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
