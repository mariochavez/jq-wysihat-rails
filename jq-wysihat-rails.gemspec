$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jq-wysihat-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jq-wysihat-rails"
  s.version     = JqWysihatRails::VERSION
  s.authors     = ["Mario A Chavez"]
  s.email       = ["mario.chavez@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "jq-wysihat html editor ready to be used on a Rails Application"
  s.description = "This gem provides jq-wysihat html editor ready to be used on Rails 3 applications"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "minitest-rails"
end
