# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jq-wysihat-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "jq-wysihat-rails"
  gem.version       = Jq::Wysihat::Rails::VERSION
  gem.authors       = ["Mario A Chavez"]
  gem.email         = ["mario.chavez@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
