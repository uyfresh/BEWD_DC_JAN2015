# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.destroy_all
Author.create([
{ first_name: 'JK', last_name: 'Rowling', bio: 'Wrote Harry Potter' },
{ first_name: 'George', last_name: 'Martin', bio: 'Wrote Game of Thrones' },
{ first_name: 'J.R.R.', last_name: 'Tolkein', bio: 'Wrote Lord of the Rings' }
	])