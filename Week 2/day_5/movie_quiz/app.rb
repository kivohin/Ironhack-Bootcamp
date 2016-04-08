require "sinatra"
require "sinatra/reloader"
require "imdb"

require_relative "./models/search.rb"

require "pry"

search_random_word_1 = Search.new

get "/search" do
	erb(:search)
end

post "/search_query" do
	word_received = params[:random_word]

	search_random_word_1.search_imdb(word_received)

	redirect "/search_results"
end

get "/search_results" do
	@posters_url_ary = []

	@access_imdb_results = search_random_word_1.search_results[0]

	@first_20_results_array = @access_imdb_results.movies[0...20]

	@first_20_results_array.each do |movie|
		if movie.poster() != nil && @posters_url_ary.length < 9
			@posters_url_ary << movie.poster()
		end 
	end

	erb(:search_results)
end