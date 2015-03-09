# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.destroy_all
Author.create([
	{first_name: 'Ben', last_name:'Mezrich', bio: 'An American author from Princeton, New Jersey, born on February 7, 1969.'},
	{first_name: 'Michael', last_name:'Lewis', bio: 'An American author from New Orleans, Louisiana, born on October 15, 1960.'},
	{first_name: 'Stephen', last_name:'Dubner', bio: 'An American author from Duanesburg, New York, born on August 26, 1963.'}
	])