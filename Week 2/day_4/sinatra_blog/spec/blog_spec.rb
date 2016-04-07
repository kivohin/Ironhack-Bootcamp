require "rspec"

require_relative "../models/blog.rb"
require_relative "../models/post.rb"

RSpec.describe Blog do
	before :each do
		@blog = Blog.new
		@post_1 = Post.new("First Post", Time.new(2016, 4, 4), "I love rollerblades!")
		@post_2 = Post.new("Second Post", Time.new(2017, 4, 5), "I like dark chocolate!")
	end

	it "#should return our posts array empty" do
		expect(@blog.posts).to eq([])
	end

	it "#returns posts array with added posts" do
		@blog.add_post(@post_1)
		@blog.add_post(@post_2)
		expect(@blog.posts).not_to be_empty
	end

	it "#returns posts array with added posts ordered chronologically" do
		@blog.add_post(@post_1)
		@blog.add_post(@post_2)
		expect(@blog.latest_posts[0].date).to eq(@post_2.date)
	end
end

