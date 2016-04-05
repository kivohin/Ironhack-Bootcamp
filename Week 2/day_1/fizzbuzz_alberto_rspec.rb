# Week 2 - Day 1

require "rspec"
require "./fizzbuzz_alberto.rb"

RSpec.describe "answer method" do
	before :each do
		@fizzbuzz = FizzBuzz.new
	end

	it "should return 'Fizz' when number can be divided by 3" do
		expect(@fizzbuzz.answer(3)).to eq("Fizz")
	end

	it "should return 'Buzz' when number can be divided by 5" do
		expect(@fizzbuzz.answer(50)).to eq("Buzz")
	end

	it "should return 'FizzBuzz' when number can be divided by 3 and 5" do
		expect(@fizzbuzz.answer(15)).to eq("FizzBuzz")
	end

	it "should return itself when number can't be divided neither by 3 nor 5" do
		expect(@fizzbuzz.answer(1)).to eq(1)
	end
end