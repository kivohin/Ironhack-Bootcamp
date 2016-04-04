# Textbnb program

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
	Home.new("Anthony's place", "Valencia", 6, 60),
	Home.new("Victor's place", "Marte", 8, 89),
	Home.new("Marcos's place", "Olocau", 10, 107),
	Home.new("Boomy's place", "Godella", 1, 2),
	Home.new("Luisa's place", "Valencia", 4, 39),
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

# homes.each do |hm|
#   puts hm.name
# end

# homes.each { |hm|
#   puts "\n#{hm.name}" + " in " + "#{hm.city}" +
#   "\nPrice: $" + "#{hm.price}" + " a night"
# }

# prices = homes.map do |p|
# 	p.price
# end

# avge = 0.0

# total_prices = prices.reduce(0.0) do |sum, num|
# 	sum += num
# end

# avge = total_prices / prices.length
# puts avge

# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

# rng = 1..42

# rng.each do |number|
#   puts "The next number in the range is: #{number}"
# end

# double = rng.map do |number|
#   number * 2
# end

# puts double

homes.each do |hm|
	puts "#{hm.name}" + " is in " + "#{hm.city}."
end

puts "\nSo dear user, I'm going to sort the homes by price, cheapest one first!\n"
puts ""

sorted_price_low = homes.sort do |home1, home2|
  home1.price <=> home2.price
end

sorted_price_low.each do |hm|
	puts "#{hm.name}: " + "#{hm.price} rupias."
end

puts "\nYou can also sort by the highest price first (press 'h'), or by capacity (press 'c')."
input = gets.chomp.downcase
puts ""

if input == 'h'
	sorted_price_high = homes.sort do |home1, home2|
  	home2.price <=> home1.price
	end

	sorted_price_high.each do |hm|
		puts "#{hm.name}: " + "#{hm.price} rupias."
	end

elsif input == 'c'
	sorted_capacity = homes.sort do |home1, home2|
  	home1.capacity <=> home2.capacity
	end

	sorted_capacity.each do |hm|
		puts "#{hm.name}: " + "#{hm.capacity} person(s)."
	end
end

puts "\nNow dear user, do you want to see only homes from specific a city? 
If so type in the name of your preference."
input_2 = gets.chomp.capitalize

user_selected_city = homes.select do |hm|
	hm.city == input_2
end

puts "\nHome(s) in your selected city:"

user_selected_city.each do |hm|
	puts "#{hm.name}"
end

puts "\nBy the way dear user, the average price of a home in #{input_2} is:"

prices_all = homes.map do |hm|
	hm.price
end	

total_prices = prices_all.reduce(0.0) do |sum, num|
	sum += num
end

puts avge = total_prices / prices_all.length

puts "\nAnd finally dear user, if you want a specific price for a home just tell me."
puts "Just remember our different prices:"

prices_all.each do |price|
	print "#{price} | "
end

puts ""
input_3 = gets.chomp.to_i

user_city_by_price = homes.find do |hm|
	hm.price == input_3
end

puts "\nSo the home with that price is #{user_city_by_price.name} in #{user_city_by_price.city}."



