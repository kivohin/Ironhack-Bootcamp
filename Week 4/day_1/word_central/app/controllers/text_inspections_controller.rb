class TextInspectionsController < ApplicationController
	def new
		render "new"
	end

	def create
		render plain: "I love mango juice!"
	end
end
