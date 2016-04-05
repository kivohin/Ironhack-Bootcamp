# Sinatra Todo List program

class Task
    attr_reader :content, :id, :complete
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
    end

    def complete?
    	return @complete
    end

    def complete!
    	@complete = true
    end

    def make_incomplete!
    	@complete = false
    end
end

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
# 2

puts task.complete
# false
puts task.complete!
puts task.complete?