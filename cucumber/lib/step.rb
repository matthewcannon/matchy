require 'rubygems'
require 'rspec/matchers'
require 'rspec/expectations'
require 'capybara/rspec'
require 'json'
require 'selenium-webdriver'

include Capybara::DSL
Capybara.default_driver = :selenium
Capybara.app_host = 'http://localhost:3000'
