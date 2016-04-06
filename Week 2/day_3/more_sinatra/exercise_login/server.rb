require "sinatra"
require "sinatra/reloader"
require "pry"

enable:sessions

database = [
	{:username => "anthony", :pass => "papaya"}
	{:username => "boomy", :pass => "mango"}
]

get "/login" do
	erb(:log_in)
end

post "/check_login" do
	
end