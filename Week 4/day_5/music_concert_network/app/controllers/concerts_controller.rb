class ConcertsController < ApplicationController
	def index
		@all_concerts = Concert.all
	end

	def show
		@concert_id = params[:id]
		@concert_object = Concert.find_by(id: @concert_id)
	end

	def new
		@concert_new = Concert.new
	end

	def create
		@concert_new = Concert.new(
			:artist => params[:concert][:artist],
			:venue => params[:concert][:venue],
			:city => params[:concert][:city],
			:date => params[:concert][:date],
			:price => params[:concert][:price],
			:description => params[:concert][:description])

		@concert_new.save

		redirect_to '/index'
	end
end