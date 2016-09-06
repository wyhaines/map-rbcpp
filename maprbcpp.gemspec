# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maprbcpp/version'

Gem::Specification.new do |spec|
  spec.name          = "maprbcpp"
  spec.version       = Map::Rbcpp::VERSION
  spec.authors       = ["Kirk Haines"]
  spec.email         = ["wyhaines@gmail.com"]

  spec.summary       = %q{An implementation of a Map (ordered key/value storage container) that wraps the standard C++ container class.}
  spec.description   = %q{Maps are associative containers which store values, indexed by key, but which provide ordered access to the values, sorted by the key. This implementation wraps the standard implementation found in C++.}
  spec.homepage      = "http://github.com/wyhaines/map-rbcpp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = %w[ext/maprbcpp/extconf.rb]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake-compiler", "~> 0"
end
