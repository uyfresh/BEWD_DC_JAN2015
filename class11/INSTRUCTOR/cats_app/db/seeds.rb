# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cat.destroy_all
Cat.create([
  {name: 'Terror', image_url: 'http://s3.amazonaws.com/rapgenius/cats-animals-kittens-background.jpg'},
  {name: 'Pumpkin', image_url: 'http://static1.squarespace.com/static/5068a99084ae5a723be3f171/t/52701d03e4b00e2f47e7474a/1383079207639/kitten-in-a-sweater-kittens-5890480-670-578.jpg'},
  {name: 'Wingnut', image_url: 'http://www.zooborns.com/.a/6a010535647bf3970b01a511cab1a8970c-800wi'}
])