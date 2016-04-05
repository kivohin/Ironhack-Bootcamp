# Sinatra Todo List RSpec

require "rspec"
require "./sinatra_todo_list.rb"

RSpec.describe "Task class methods" do
	before :each do
		@task = Task.new("Test")
	end

	it "complete status should return false when new task is created" do
		expect(@task.complete).to eq(false)
	end

	it "should return false whether the task is not completed" do
		expect(@task.complete?).to eq(false)
	end

	it "should return true whether the task is completed" do
		expect(@task.complete?).to be true
	end

	# it "complete status should return false when new task is created" do
	# 	expect(Task.new("Test 4").complete!).to eq(false)
	# end
end