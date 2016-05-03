# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sandwich.create name: 'Falafel', bread_type: 'Pita'
Sandwich.create name: 'Choky', bread_type: 'Integral'
Sandwich.create name: 'Jelly Jelly', bread_type: 'White'
Sandwich.create name: 'Wacky & Spicy', bread_type: 'Cereal'
Sandwich.create name: 'Meat Lover', bread_type: 'Mixed Meat'

Ingredient.create name: 'Mierda', calories: 500
Ingredient.create name: 'Nutella', calories: 900

sandwich = Sandwich.find_by(id: 1)
ingredient = Ingredient.first
sandwich.ingredients.push(ingredient)

sandwich = Sandwich.find_by(id: 2)
ingredient = Ingredient.second
sandwich.ingredients.push(ingredient)

sandwich = Sandwich.find_by(id: 3)
ingredient = Ingredient.first
sandwich.ingredients.push(ingredient)

sandwich = Sandwich.find_by(id: 4)
ingredient = Ingredient.first
sandwich.ingredients.push(ingredient)

sandwich = Sandwich.find_by(id: 5)
ingredient = Ingredient.second
sandwich.ingredients.push(ingredient)