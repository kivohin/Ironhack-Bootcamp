class CarMine
	def noise_low
		puts "Brooom"
	end

	def noise_high
		puts "BROOOM"
	end
end

golfita = CarMine.new()
golfita.noise_low()

tiguan = CarMine.new
tiguan.noise_high

# ---- Professor ---- #

class Car
	attr_reader :noise

	def initialize noise
		@noise = noise
		@array = []
	end

	def visit(city)
		# @array.push(city)
		@array << city
	end

	def cities
		puts @array
	end
end

class NoiseMaker
	def self.make_noise(item)
		# 2.times { puts item.noise }
		puts item.noise
		puts item.noise
	end
end

quiet_car = Car.new("Ssss...")
noisy_car = Car.new("Brooom!!!")

NoiseMaker.make_noise quiet_car
NoiseMaker.make_noise noisy_car

quiet_car.visit("Valencia")
quiet_car.visit("Barcelona")
quiet_car.visit("Amsterdam")
quiet_car.visit("Bogota")

quiet_car.cities

# puts quiet_car.inspect




