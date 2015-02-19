require_relative './moma'

Artist.destroy_all
Artist.create(
	[
		{ name: "Vincent Van Gogh", nationality: "Dutch"},
		{ name: "Pablo Picasso", nationality: "Spanish"},
		{ name: "Rembrandt van Rijn", nationality: "Dutch"}
	]
)

Painting.destroy_all
Painting.create(
	[
		{ title: "The Starry Night"},
		{ title: "The Old Guitarist"},
		{ title: "The Night Watch"}
	]
)