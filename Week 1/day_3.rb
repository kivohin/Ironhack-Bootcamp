# Day 3

# fruits = ["apple", "mango", "orange"]

# puts fruits[1]

# ----Program---- #

# hash = {
# 	:wat => [1, 2, {:wut => [1, [[1, 2, 3, 4, 5, 6, 7, 8, 9, {:bbq => "end"}], 2]]}]
# }

# arr = [
# 	[0, 1, 2, 3, 4, {:secret => {:unlock => [0, "end"]}}], 2
# ]

# puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]

# ----Program---- #

# module Payable
# 	def salary
# 		puts "Got paid! :)"
# 	end
# end

# class Programmer
# 	include Payable
# end

# class Designer
# 	include Payable
# end

# programmer_1 = Programmer.new

# programmer_1.salary

# ----Program - Inheritance---- #

# class Engine
# 	def move_pistons
# 		puts "Pshhhh"
# 	end
# end

# class Car < Engine
# end

# car1 = Car.new
# car1.move_pistons

# ----Program - Composition---- #

# class Car
# 	def initialize
# 		@engine = Engine.new
# 	end

# 	def start
# 		@engine.move_pistons
# 	end
# end

# class Engine
# 	def move_pistons
# 		"Pshhhh"
# 	end
# end

# puts Car.new.start

# ----Program - Injection---- #

# class Car
# 	def initialize(engine)
# 		@engine = engine
# 	end

# 	def start
# 		@engine.move_pistons
# 	end
# end

# class Engine
# 	def move_pistons
# 		"Pshhhh"
# 	end
# end

# puts Car.new(Engine.new).start

# ----Program---- #

class Vehicle
	attr_reader :wheels, :noise

	def initialize(wheels, noise)
		@wheels = wheels
		@noise = noise
	end

	def make_noise
		puts @noise
	end
end

class VehiclesHandler
	def initialize(array)
		@array = array
	end

	def count_wheels
		total_wheels = @array.reduce(0) do |sum, vehicle|
			sum += vehicle.wheels
		end
	end

	def make_noises
		@array.each do |vehicle|
			vehicle.make_noise
		end
	end
end

bycicle = Vehicle.new(2, "RingRang")
car = Vehicle.new(4, "Bruuuum")

array = [bycicle, car]

handler = VehiclesHandler.new(array).count_wheels

puts handler

