class ProjectsController < ApplicationController
	def index
		@last_10_projects = Project.order(created_at: :desc).limit(10)
		@last_project = Project.last

		render "index"
	end

	def show
		@my_project = Project.find params[:id]

		render "show"
	end
end
