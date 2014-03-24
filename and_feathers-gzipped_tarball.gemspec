# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'and_feathers/gzipped_tarball/version'

Gem::Specification.new do |spec|
  spec.name          = "and_feathers-gzipped_tarball"
  spec.version       = AndFeathers::GzippedTarball::VERSION
  spec.authors       = ["Brian Cobb"]
  spec.email         = ["bcobb@uwalumni.com"]
  spec.description   = %q{Turn AndFeathers archives into tgz archives}
  spec.summary       = %q{Tar and gzip AndFeathers archives}
  spec.homepage      = "http://github.com/bcobb/and_feathers-gzipped_tarball"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "and_feathers", ">= 1.0.0.pre", "< 2"
end
