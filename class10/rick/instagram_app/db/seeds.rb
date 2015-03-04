# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Entry.create(author: "Johnny Tree", photo_url: "https://placeimg.com/300/300/nature", date_taken: "12 FEB 2015")
Entry.create(author: "Jane Doe", photo_url: "https://placeimg.com/300/300/people", date_taken: "13 Jan 2015")
Entry.create(author: "Crow Servo", photo_url: "https://placeimg.com/300/300/tech", date_taken: "10 FEB 2015")
Entry.create(author: "Timon Pumba", photo_url: "https://placeimg.com/300/300/animals", date_taken: "05 JAN 2015")
