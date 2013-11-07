require 'rspec'
require './fibonacci'

describe Fibonacci do

	it '#self.nth_number returns the nth number in the Fibonacci' do
		Fibonacci.nth_number(5).should eq(5)
		Fibonacci.nth_number(12).should eq(144)
	end

	it '#self.nth_number_iterative returns the nth number in Fibonacci' do
		Fibonacci.nth_number_iterative(5).should eq(5)
		Fibonacci.nth_number_iterative(12).should eq(144)
	end

end