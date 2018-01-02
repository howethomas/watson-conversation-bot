# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'olimpo/version'

Gem::Specification.new do |spec|
  spec.name          = "olimpo"
  spec.version       = Olimpo::VERSION
  spec.authors       = ["Abraham Kuri"]
  spec.email         = ["kurenn@icalialabs.com"]

  spec.summary       = %q{ The Watson Authentication Handler in Ruby }
  spec.description   = %q{ The Watson Authentication Handler in Ruby }
  spec.homepage      = "https://github.com/IcaliaLabs/olimpo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.14.0"
  spec.add_dependency "activesupport", "~> 4.0"
  spec.add_dependency "httmultiparty", "~> 0.3.16"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
