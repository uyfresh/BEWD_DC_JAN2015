require_relative './moma'

Painting.destroy_all
Artist.destroy_all

Artist.create(
	[
		{artist: "Vincent Van Gogh", nationality: "Dutch"},
		{artist: "Pablo Picasso", nationality: "Spanish"},
		{artist: "Gerhard Richter", nationality: "German"}
	]
)

van_gogh = Artist.find_by(artist: "Vincent Van Gogh")

picasso = Artist.find_by(artist: "Pablo Picasso")

richter = Artist.find_by(artist: "Gerhard Richter")

starry_night = Painting.create(title: "Starry Night", artist: van_gogh)

guernica = Painting.create(title: "Guernica", artist: picasso)

townscape_madrid = Painting.create(title: "Townscape Madrid", artist: richter)

binding.pry
