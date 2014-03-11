require 'capybara/cucumber'
require 'capybara/webkit'
require 'capybara/rspec'

Capybara.app_host = 'http://localhost:5000'
Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit
