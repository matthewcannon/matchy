begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

require('./lib/sut.rb')

Given /^no things$/ do
	Sut.remove_all_things
	Sut.get_number_of_things.should == 0
end

Given /^(\w+)$/ do |thing|
	Sut.add_thing thing
end
