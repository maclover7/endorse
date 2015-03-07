# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'endorse/version'

Gem::Specification.new do |spec|
  spec.name          = "endorse"
  spec.version       = Endorse::VERSION
  spec.authors       = ["Jon Moss"]
  spec.email         = ["me@jonathanmoss.me"]

  spec.summary       = %q{Endorse will validate that the gem you are downloading is for real!}
  spec.description   = %q{Endorse will validate that the gem you are downloading is for real!}
  spec.homepage      = "https://github.com/maclover7/endorse"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'claide'

  spec.add_development_dependency "rake", "~> 10.0"
end
