# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daychain/version'

Gem::Specification.new do |gem|
  gem.name          = "daychain"
  gem.version       = Daychain::VERSION
  gem.author        = ["Shane Weng"]
  gem.email         = ["shane.weng@gmail.com"]
  gem.date          = Time.now.strftime("%Y-%m-%d")
  gem.description   = %q{CLI interface for printing day chain}
  gem.summary       = %q{A day track system for habit building}
  gem.homepage      = "http://shaneweng.com/daychain"
  gem.license       = "MIT"
  gem.executables   << "daychain"

  gem.files         = ["lib/daychain.rb"]
  gem.require_paths = ["lib"]
  gem.add_dependency 'colorize', '~> 0.7', '>= 0.7.3'
end
