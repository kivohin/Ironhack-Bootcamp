class UsersController < ApplicationController
	def index
		@all_users = User.all.limit(5)
	end

	def create
		@user = User.first
		WelcomeMailer.welcome_email(@user).deliver_now
		redirect_to index
	end
end
