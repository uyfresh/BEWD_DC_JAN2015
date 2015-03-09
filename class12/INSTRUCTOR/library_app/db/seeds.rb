# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.destroy_all
Author.create([
  {first_name: "J.K.", last_name: "Rowling", bio: "A British novelist best known as the author of the Harry Potter fantasy series."},
  {first_name: "Michael", last_name: "Crichton", bio: "An American best-selling author, physician, producer, director, and screenwriter."}
  ])

seuss = Author.create({first_name: "Dr.", last_name: "Seuss", bio: "An American writer and cartoonist. He was most widely known for his children's books."})

Book.create({
  title: "Green Eggs and Ham", 
  image_url: "http://upload.wikimedia.org/wikipedia/en/c/c2/Greenegg.gif", 
  synopsis: "I do not like them Sam-I-am", 
  author: seuss})

Book.create({title: "The Cat in the Hat", image_url: "http://upload.wikimedia.org/wikipedia/en/b/b5/Seuss-cat-hat.gif", synopsis: "The cat wears a hat. It is striped.", author: seuss})