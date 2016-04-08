require "imdb"
require "pry"

class Search
	attr_accessor :search_results

	def search_imdb(word)
		@search_results = []
		
		@search_results << Imdb::Search.new(word)
	end
end