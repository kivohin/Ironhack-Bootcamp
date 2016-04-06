# Week 2 - Day 1

require 'pry'

# ----Program - Iteration 3---- #

class StringCalculator
	def add(num)
		# puts num # Can also be 'return num'

		# In next method .to_s is only fot the case if user passes us an integer like '2'
		ary_str = num.to_s.split(",")

		ary_num = []

		ary_str.each do |str|
			ary_num << str.to_i
		end

		total_sum = ary_num.reduce(0) do |sum, num|
			sum + num
		end

		total_sum
	end
end

StringCalculator.new.add("2, 1")

