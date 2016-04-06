# Sinatra Todo List program

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
    def initialize
    	@tasks = []
    end
end

task = Task.new("Buy the milk")
task2 = Task.new("Wash the car")

puts task.create_at
puts task.update_content!("Update :)")
puts task.updated_at