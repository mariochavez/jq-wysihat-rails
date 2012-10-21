# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jq-wysihat-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "jq-wysihat-rails"
  gem.version       = Jq::Wysihat::Rails::VERSION
  gem.authors       = ["Mario A Chavez"]
  gem.email         = ["mario.chavez@gmail.com"]
  gem.description   = %q{Use jq Whysihat with Rail 3}
  gem.summary       = %q{This gem provides jq Wysihat ready to be used with Rails 3}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
