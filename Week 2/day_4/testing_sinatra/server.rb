require "sinatra"
require "sinatra/reloader"

get "/" do
	"I'm Root!"
end

# get "/home" do
# end

get "/real_page" do
	"I'm Real Page!"
end

get "/hi" do
	"I'm Hi!"
	redirect "/real_page"
end