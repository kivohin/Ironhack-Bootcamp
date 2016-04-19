# require "pry"

class ContactsController < ApplicationController
	def index
		@all_contacts = Contact.order("name ASC").all

		render "index"
	end

	def new
		render "new"
	end

	def create
		contact = Contact.new(
			:name => params[:contact][:name],
			:address => params[:contact][:address],
			:phone_number => params[:contact][:phone],
			:email => params[:contact][:email])

		@name = params[:contact][:name]
		@address = params[:contact][:address]

		if (@name.to_s.empty? == false && @address.to_s.empty? == false)
			contact.save
		end

		redirect_to("/contacts")
	end

	def show
		@id = params[:id]

		@contact_object = Contact.find_by(id: @id)
	end
end
