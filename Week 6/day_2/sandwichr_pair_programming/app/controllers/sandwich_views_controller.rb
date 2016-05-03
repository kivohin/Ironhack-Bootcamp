require 'pry'

class SandwichViewsController < ApplicationController
	def index
		@all_sandwiches = Sandwich.all.limit(100)
	end

	def show
		id = params[:id]
		@sandwich = Sandwich.find_by(id: id)
		# binding.pry
		@ingredients = @sandwich.ingredients[0]
	end
end
