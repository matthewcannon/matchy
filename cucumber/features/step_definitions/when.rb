begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

require './lib/step.rb'

When /I ask for (\w+)$/ do |thing|
	visit('/')
end
