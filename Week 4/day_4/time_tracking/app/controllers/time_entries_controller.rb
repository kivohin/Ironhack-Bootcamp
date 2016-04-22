class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])

		# @my_entries = @my_project.time_entries.where("created_at >= ? AND created_at <= ?",Date.today.beginning_of_month, Date.today.end_of_month)

		@my_entries = @my_project.time_entries
	end

	def new
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.new
	end

	def create
		@my_project = Project.find params[:project_id]

		@my_entry = @my_project.time_entries.new(entry_params)

		if @my_project.save
			redirect_to action: "index", controller: "time_entries", project_id: @my_project.id

		else
			render "new"
		end	
	end

	def edit
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find(params[:id])
	end

	def update
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find(params[:id])

		if @my_entry.update_attributes(entry_params)
			redirect_to project_entries_path

		else
			render "edit"
		end
	end

	def destroy
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]
		@my_entry.destroy

		flash[:notice] = "Entry deleted!"
		redirect_to project_entries_path(@my_project)
	end

	private
	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :comments, :date)
	end
end

