# Week 2 - Day 1

require "rspec"
require "./day_1"

RSpec.describe "add method" do

	before :each do
		@calc = StringCalculator.new
	end

	it "should return 0 for an empty string" do
		expect(@calc.add("")).to eq(0)
	end

	it "return 2 when only that number" do
		expect(@calc.add(2)).to eq(2)
	end

	it "return a fixnum when string is passed" do
		expect(@calc.add("ato")).to be_a_kind_of(Fixnum)
	end

	it "should return 3 when passing 2 and 1" do
		expect(@calc.add("1, 2")).to eq(3)
	end
end