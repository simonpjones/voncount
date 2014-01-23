# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'voncount/version'

Gem::Specification.new do |spec|
  spec.name          = "voncount"
  spec.version       = Voncount::VERSION
  spec.authors       = ["Simon Jones"]
  spec.email         = ["spj3rd@googlemail.com"]
  spec.description   = "Count characters like The Count"
  spec.summary       = "Simple js-rails character counter."
  spec.homepage      = "http://simonpjones.github.io/voncount"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "railties"
end
