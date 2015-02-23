# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author = Author.create(first_name: 'Michael', last_name: 'Crichton')

Book.create(title: 'Jurassic Park', year: 1993, author: author)
Book.create(title: 'Congo', year: 1991, author: author)