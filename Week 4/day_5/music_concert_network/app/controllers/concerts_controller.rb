class ConcertsController < ApplicationController
	def index
		@all_concerts = Concert.all
	end
end
