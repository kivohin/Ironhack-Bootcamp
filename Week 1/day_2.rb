class Car
	def initialize noise
		@noise = noise
	end

	def make_noise
		puts @noise
	end
end

class RacingCar < Car
	def initialize
		@noise = "BROOOM!"
	end
end

my_car = Car.new"Bruuum!"
my_car.make_noise

my_racing_car = RacingCar.new
my_racing_car.make_noise

# ----Human Class---- #

class Human
	attr_reader :name
	attr_accessor :age

	def initialize name, age
		@name = name
		@age = age
	end
end

anthony = Human.new("Anthony", 28)
puts anthony.name

anthony.age = 8
puts anthony.age

# ----Each---- #

classmates = ["Elina", "Mark", "Dan"]

classmates.each do |item|
	puts "Good morning #{item}!"
end

cities = ["miami", "barcelona", "madrid"].map do |item|
	puts item.capitalize
end

# ----Injection---- #

class Car
	def initialize(engine = Engine.new)
		@engine = engine
	end

	def start
		puts "Kliklak"
		@engine.move_pistons
	end

end

class Engine
	def move_pistons
		puts "Pssssh"
	end
end

class SuperPowerfulEngine
	def move_pistons
		puts "PRAAAPAPAP"
	end
end

car = Car.new(Engine.new)
car.start

