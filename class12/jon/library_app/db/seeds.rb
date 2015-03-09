# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.destroy_all
Author.create([
	{first_name: 'Jon', last_name: 'Rojas', bio: 'Works at General Assembly'},
	{first_name: 'Steve', last_name: 'Jobs', bio: 'I made the iPhone. You\'re welcome'},
	{first_name: 'Peter', last_name: 'Lai', bio: 'Works at Wedding Wire'}
	])