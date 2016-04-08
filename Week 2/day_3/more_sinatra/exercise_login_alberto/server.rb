# server.rb
require 'sinatra'
require 'sinatra/reloader'

enable:sessions

get "/login" do
	erb(:login)
end

get "/logout" do
	session[:is_logged] = false
	redirect "/login"
end

post "/checklogin" do
	username_received = params[:username]
	password_received = params[:password]

	user_pwd_list = [
		{:username => "alberto", :password => "letmein"},
		{:username => "test", :password => "guest"}
	]

	if user_pwd_list.any? {|single_user| single_user[:username] ==  username_received and single_user[:password] == password_received}
		session[:is_logged] = true
		session[:current_user] = username_received
		redirect "/"
	else
		redirect "/login"
	end
end

get "/" do
 if session[:is_logged]
	 @current_user = session[:current_user]
	 erb(:user_profile)
 else
	 redirect "/login"
	end
end
