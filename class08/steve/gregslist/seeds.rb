require_relative './moma'

Painting.destroy_all
Artist.destroy_all

User.create(
  [
    { name: "Steve Williams", location: "Crofton" },
	{ name: "Mike Smith", location: "Annapolis" },
	{ name: "Joe Brown", location: "Washington" }
  ]
)

steve = User.find_by(name: "Steve Williams")
mike =  User.find_by(name: "Mike Smith")
joe =  User.find_by(name: "Joe Brown")

chair = Posting.create(item: "Black Chair", price: 10.50, artist: rem)
hat = Posting.create(item: "New Era Orioles Hat", price: 18.00, artist: pablo)
vase = Posting.create(item: "Vase", price: 30.00, artist: claude)