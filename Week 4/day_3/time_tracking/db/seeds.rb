# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create name: 'Ironhack', description: 'Work hard and learn how to code'
Project.create name: 'Create an app with rails'
Project.create name: 'Cooking', description: 'Learn new recipes'
Project.create name: 'Sail'
Project.create name: 'Play Football', description: 'Sunday football with friends'
Project.create name: 'Travel', description: 'choose the next destination'
Project.create name: 'Holidays', description: 'Plan Summer Holidays'
Project.create name: 'Learn Swift', description: 'Study the new programming language by Apple'
Project.create name: 'Read', description: 'find new books to read for the summer'
Project.create name: 'Interviews', description: 'Interview new candidates'
Project.create name: 'Beach', description: 'Meet with friends at the beach'

TimeEntry.create project_id: 1, hours: 3, minutes: 15, comments: "work on exercise"
TimeEntry.create project_id: 1, hours: 1, minutes: 43, comments: "study slides"
TimeEntry.create project_id: 1, hours: 2, minutes: 10, comments: "pair programming"
TimeEntry.create project_id: 6, hours: 1, minutes: 43, comments: "check flights on skyscanner"
