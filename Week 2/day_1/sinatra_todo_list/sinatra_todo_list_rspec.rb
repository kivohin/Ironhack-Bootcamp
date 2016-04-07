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
		@task.make_incomplete!
		expect(@task.complete?).to eq(false)
	end

	it "should return true whether the task is completed" do
		@task.complete!
		expect(@task.complete?).to be true
	end
end

describe "TodoList class methods" do
	before :each do
		@task = Task.new("Test")
		@array_tasks = TodoList.new
	end

	it "returns true if our array of tasks is not empty" do
		expect(@array_tasks.add_task(@task)).not_to be_empty
	end

	it "returns empty array of tasks" do
		@array_tasks.add_task(@task)
		expect(@array_tasks.delete_task(7)).to be_empty
	end
end