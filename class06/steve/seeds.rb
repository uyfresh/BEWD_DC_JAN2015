require_relative './moma'

Painting.destroy_all
Artist.destroy_all

Artist.create(
  [
    { name: "Rembrandt", nationality: "Dutch" },
	{ name: "Pablo Picasso", nationality: "Spanish" },
	{ name: "Claude Monet", nationality: "French" }
  ]
)

pablo = Artist.find_by(name: "Pablo Picasso")
rem =  Artist.find_by(name: "Rembrandt")
claude =  Artist.find_by(name: "Claude Monet")

polish = Painting.create(title: "A Polish Nobleman", artist: rem)
guernica = Painting.create(title: "Guernica", artist: pablo)
water = Painting.create(title: "Water Lily Pond", artist: claude)