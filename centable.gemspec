$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "centable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "centable"
  s.version     = Centable::VERSION
  s.authors     = ["Carlos Garcia"]
  s.email       = ["carlos@carlosagp.com"]
  s.homepage    = "https://github.com/carlosagp/centable"
  s.summary     = "A rails gem to handle columns as cents"
  s.description = "This rails gem handles *_cent columns as integers and will convert them to a BigDecimal representation."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
end
