# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grovepi/version'

Gem::Specification.new do |spec|
  spec.name          = 'grovepi'
  spec.version       = Grovepi::VERSION
  spec.authors       = ['Tom Scott']
  spec.email         = ['tscott@weblinc.com']

  spec.summary       = 'GrovePi+ for Ruby'
  spec.description   = spec.description
  spec.homepage      = 'http://www.grovepi.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.extensions    = ['ext/grovepi/extconf.rb']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rake-compiler'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rubocop'
end
