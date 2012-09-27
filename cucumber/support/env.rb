require 'capybara/cucumber'
require 'capybara-webkit'

Capybara.app_host = 'http://localhost:3000'
Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit
