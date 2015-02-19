require_relative './moma'

Artist.destroy_all
Painting.destroy_all

Artist.create(
	[
		{name: "Vincent Van Gogh", nationality: "Dutch"},
		{name: "Pablo Picasso", nationality: "Spanish"},
		{name: "Andy Warhol", nationality: "American"},
		{name: "Richard Long", nationality: "British"}
	]
)

van_gogh = Artist.find_by(name: "Vincent Van Gogh")
picasso = Artist.find_by(name: "Pablo Picasso")
warhol = Artist.find_by(name: "Andy Warhol")
long = Artist.find_by(name: "Richard Long")

Painting.create(title:"Painter on the Road to Tarascon", artist: van_gogh)
Painting.create(title: "Le Rêve", artist: picasso)
Painting.create(title: "Guernica", artist: picasso)
Painting.create(title: "Silver Car Crash (Double Disaster)", artist: warhol)
Painting.create(title: "Sahara Line", artist: Artist.find_by(name: "Richard Long"))


# the following method was tried but this did not work

# Painting.create{
# 	[
# 		{title: "Painter on the Road to Tarascon", artist: van_gogh},
# 		{title: "Le Rêve", artist: picasso},
# 		{title: "Silver Car Crash (Double Disaster)", artist: warhol},
# 		{title: "Sahara Line", artist: long}
# 	]
# }