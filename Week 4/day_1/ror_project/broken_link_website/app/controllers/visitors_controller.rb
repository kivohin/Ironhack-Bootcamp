class VisitorsController < ApplicationController
	def about
		@current_page = "about"
	end

	def blog
		@current_page = "blog"
	end

	def contact
		@current_page = "contact"
	end

	def home
		@current_page = "home"
	end
end
