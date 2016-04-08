require "sinatra"
require "sinatra/reloader"

require_relative "./models/post.rb"
require_relative "./models/blog.rb"

require "pry"

post_1 = Post.new("First Post", Time.new(2016, 4, 4), "I love rollerblades!")
post_2 = Post.new("Second Post", Time.new(2016, 4, 5), "I like dark chocolate!")
post_3 = Post.new("Third Post", Time.new(2016, 4, 6), "I love Dragon Ball TV show!")

blog = Blog.new
blog.add_post(post_1)
blog.add_post(post_2)
blog.add_post(post_3)

get "/" do
	@posts = blog.latest_posts

	erb(:latest_posts)
end

get "/post_details/:index" do
	@index = params[:index].to_i
	@posts = blog.latest_posts

	erb(:post_details)
end

get "/new_post" do
	erb(:new_post)
end

post "/check_new_post" do
	title_received = params[:title]
	content_received = params[:content]
	date_created = Time.now

	post_new = Post.new(title_received, date_created, content_received)
	blog.add_post(post_new)

	redirect "/"
end
