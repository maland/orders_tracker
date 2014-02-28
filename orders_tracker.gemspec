$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "orders_tracker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "orders_tracker"
  s.version     = OrdersTracker::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of OrdersTracker."
  s.description = "TODO: Description of OrdersTracker."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.test_files = Dir["spec/**/*"]

  s.add_dependency 'rails', '~> 4.0.3'
  s.add_dependency 'bootstrap-sass'
  s.add_dependency 'sass-rails', '~> 4.0.0'
  s.add_dependency 'jquery-rails', '~> 3.1.0'

  s.add_development_dependency 'thin'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  # s.add_development_dependency 'webrat'
  s.add_development_dependency 'capybara', '< 2.2'
  s.add_development_dependency 'capybara-webkit', '~> 1.1.1'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rb-fsevent'
  s.add_development_dependency 'growl'
  s.add_development_dependency 'selenium-webdriver'
end