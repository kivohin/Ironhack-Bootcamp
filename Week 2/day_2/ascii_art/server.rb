require "sinatra"
require "sinatra/reloader"
require "artii"
require "pry"

get "/" do
	"My first website with Sinatra app."
end

get "/ascii/?:word?/?:font?" do
	@word1 = params[:word]
	@font1 = params[:font]
	@secret = params[:secret]

	if @font1 == nil
		a = Artii::Base.new :font => "slant"
		@a = a.asciify(@word1)

	else
		a = Artii::Base.new :font => @font1
		@a = a.asciify(@word1)
	end
	
	erb(:iter_one)
end

get "/buu/bee/baa" do
	erb(:iter_three)
end
