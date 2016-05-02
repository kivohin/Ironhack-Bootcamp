class IngredientsController < ApplicationController
	def create
		ingredient = Ingredient.new(
			:name => params[:ingredient][:name],
			:calories => params[:ingredient][:calories])

		ingredient.save

		render json: ingredient
	end

	def destroy
		ingredient = Ingredient.delete(params[:id])

		render json: ingredient
	end

	def show
		ingredient = Ingredient.find_by(params[:id])

		render json: ingredient
	end
end
