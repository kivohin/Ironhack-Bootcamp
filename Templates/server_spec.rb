require "rspec"
require "rack/test"
require_relative "../server.rb"

describe "Server Service" do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end
end