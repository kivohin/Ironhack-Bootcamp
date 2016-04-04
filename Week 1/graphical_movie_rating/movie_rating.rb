# Graphical Movie Rating program

require 'pry'
require 'imdb'

movies = IO.read("movies.txt")

array_movies = movies.split("\n")

result = []

array_movies.each do |movie|
	result << Imdb::Search.new(movie)
end

result.each do |objects|
	puts rating = objects.movies[0].rating
	puts title = objects.movies[0].title
	binding.pry
end
