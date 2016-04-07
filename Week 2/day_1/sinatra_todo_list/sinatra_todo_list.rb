# Sinatra Todo List program

require "pry"

class Task
	attr_reader :content, :id, :complete, :create_at, :updated_at
	@@current_id = 1
    
	def initialize(content)
		@content = content
		@id = @@current_id
		@@current_id += 1
		@complete = false
		@create_at = Time.now
		@updated_at = nil
	end

	def complete?
		@complete
	end

	def complete!
		@complete = true
	end

	def make_incomplete!
		@complete = false
	end

	def update_content!(new_content)
		@content = new_content
		@updated_at = Time.now
		@content
	end
end

class TodoList
	attr_reader :tasks

	def initialize(user)
		@@tasks = []
		@@sorted_tasks = []
		@@user = user
		@todo_store = YAML::Store.new("tasks.yml")
	end

	def add_task(task)
		@@tasks << task
	end

	def delete_task(task_id)
		@@tasks.delete_if { |task|
			task.id == task_id
		}
	end

	def find_task_by_id(task_id)
		@@tasks.each do |task|
			if task.id == task_id
				task.content

			else
				nil
			end
		end
	end

	def sort_by_created(order)
		if order == "ASC"
			@@sorted_tasks = @@tasks.sort { | task1, task2 | task1.create_at <=> task2.create_at }

		elsif order == "DESC"
			@@sorted_tasks = @@tasks.sort { | task1, task2 | task2.create_at <=> task1.create_at }
		end
	end
end

task1 = Task.new("Buy the milk")
task2 = Task.new("Wash the car")

puts task1.create_at
puts task1.update_content!("Update :)")
puts task1.updated_at

task_list1 = TodoList.new("Anthony")
task_list1.add_task(task1)
task_list1.add_task(task2)

task_list1.sort_by_created("ASC")

