# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.create([
  {first_name: "J.K.", last_name: "Rowling", bio: "A British novelist best known as the author of the Harry Potter fantasy series."},
  {first_name: "Michael", last_name: "Crichton", bio: "An American best-selling author, physician, producer, director, and screenwriter."}
  ])