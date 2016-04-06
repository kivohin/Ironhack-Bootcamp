require "sinatra"
require "sinatra/reloader"
require "pry"

enable:sessions

get "/users/:username" do
	@username = params[:username]

	binding.pry
	"Hello " + @username
end

get "/foo" do
	status(418)
	"I'm a tea pot."
end

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	"Now in the session: " + session[:saved_value]
end

get "/memory" do
	erb(:memory)
end