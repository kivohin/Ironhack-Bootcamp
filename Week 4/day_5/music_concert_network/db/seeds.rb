# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Concert.create artist: 'Michael Jackson', venue: 'Batcave', city: 'Bucaramanga', date: '2016-04-13', price: 77, description: 'Awesome last concert of MJ!'
Concert.create artist: 'Carlos Vives', venue: 'Secret mansion', city: 'Santa Marta', date: '2015-05-07', price: 50, description: 'Super latin concert in a hidden magic mansion!'
Concert.create artist: 'Metronomy', venue: "Spiderman's house", city: 'New York', date: '2020-03-24', price: 69, description: "Never seen spectacular concert at Spidy's!"