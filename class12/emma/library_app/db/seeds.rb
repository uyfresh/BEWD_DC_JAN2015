# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.destroy_all
Author.create ([
	{first_name: "J.K.", last_name: "Rowling", bio:"A British novelist"},
	{first_name: "Michael", last_name: "Chrichton", bio:"An American novelist"},
	{first_name: "Agatha", last_name: "Christy", bio:"A British mystery writer"},
	{first_name: "Jane", last_name: "Austen", bio:"A British novelist"}
	])