ENV['RAILS_ENV'] ||= 'test'
require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'rspec/rails'
# require 'rspec/autorun'
require 'capybara/rspec'
require 'capybara/rails'
require 'capybara-webkit'
require 'capybara/webkit/matchers'
require 'factory_girl_rails'
require 'database_cleaner'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.before(:each) do
    DatabaseCleaner.strategy = example.metadata[:js] ? :truncation : :transaction
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.include(Capybara::Webkit::RspecMatchers, :type => :feature)
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end

Capybara.default_driver = :webkit
Capybara.javascript_driver = :webkit
