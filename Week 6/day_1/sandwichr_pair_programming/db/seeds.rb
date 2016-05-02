# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sandwich.create name: 'Falafel', bread_type: 'Pita'
Sandwich.create name: 'Choky', bread_type: 'Integral'

Ingredient.create name: 'Mierda', calories: 500
Ingredient.create name: 'Nutella', calories: 900