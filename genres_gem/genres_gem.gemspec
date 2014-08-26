# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genres_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "genres_gem"
  spec.version       = GenresGem::VERSION
  spec.authors       = ["Patrick Lauer & Ian Bui"]
  spec.email         = ["pair+plauer.thinkbui@devbootcamp.com"]
  spec.description   = %q{Produces analytics tool for genres}
  spec.summary       = %q{Analytics tool for genres}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
