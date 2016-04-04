# Shopping Cart program

require 'pry'

class ShopingCart
	# attr_reader :article[:name]

	# def initialize(article)
	# 	@name = ""
	# 	@price = 0
	# end



	def add_item_to_cart(name, price)
		
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price= price
		@item = { :name => name, :price => price}
	end
end

papaya = Item.new("papaya", 4)

cart = ShopingCart.new()

puts papaya.inspect