# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
User.new(author:"Joshua Young", photo_url:"https://scontent-lga.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/1920447_10101538083280684_640655122_n.jpg?oh=70d15a88652760cd47c373373c2c93d7&oe=55839FBB")