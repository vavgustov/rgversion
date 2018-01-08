# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rgversion/version"

Gem::Specification.new do |spec|
  spec.name          = "rgversion"
  spec.version       = Rgversion::VERSION
  spec.authors       = ["vavgustov"]
  spec.email         = ["vavgustov@gmail.com"]

  spec.summary       = "Copy latest semantic versions of specified gems to your clipboard."
  spec.description   = "This library allow you to quickly copy latest semantic versions of specified gems to your clipboard."
  spec.homepage      = "https://github.com/vavgustov/rgversion"
  spec.license       = "MIT"
  
  spec.required_ruby_version = '>= 2.1.0'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_development_dependency "simplecov", "~> 0.15"

  spec.add_runtime_dependency "nokogiri", "~> 1.8"
end
