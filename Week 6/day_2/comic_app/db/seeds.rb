# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clark, tony, boomy = User.create([
	{name: 'Clark Kent', email: 'clark@dailyplanet.com', password: 'clark7', password_confirmation: 'clark7'},
	{name: 'Peter Parker', email: 'spidy@nyt.com', password: 'spidy7', password_confirmation: 'spidy7'},
	{name: 'Boomy Nabuurs', email: 'boomy@nabuurs.com', password: 'boomy7', password_confirmation: 'boomy7'}
])

User.find(1).comics.create([
	{title: 'Watchmen', publisher: 'Vertigo'},
	{title: 'Spiderman', publisher: 'Your Mother'}
])

Comic.create([
	{title: 'Batman', publisher: 'Bruce', user_id: 2},
	{title: 'Peter Pan', publisher: 'Wendy', user_id: 2}
])