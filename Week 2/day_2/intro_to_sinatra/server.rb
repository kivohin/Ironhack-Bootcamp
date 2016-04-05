require "sinatra"
require "sinatra/reloader"

get "/" do
	"My first website with Sinatra app."
end

get "/author" do
	erb(:author)
end

get "/test" do
	erb(:john)
end

get "/today" do
	@today = Time.new.strftime("%I %M %S %p %d %m %Y %D %R")
	erb(:currentday)
end

get "/hi" do
	#wont load until hipage.erb is created!
	@greeting = "Sinatra says hello, man."
	erb(:hipage)
end

get "/pizza" do
	@ingredients = ["Tomato", "Mozzarella","Black Olives","Bacon","Onions","Anchovies"]
	erb(:pizza)
end

get "/users/:username" do
	@username = params[:username]
	erb(:user_profile)
end

