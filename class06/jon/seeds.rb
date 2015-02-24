require_relative './moma'

Artist.destroy_all

Artist.create(
	[
		{ name: "Vincent Van Gogh", nationality: "Netherlands"},
		{ name: "Pablo Picasso", nationality: "Spain"},
		{ name: "Claude Monet", nationality: "France"}
	]
)

Painting.create(
	[
		{ title: "Starry Night", artist_id: 1 },
		{ title: "The Old Guitarist", artist_id: 2 },
		{ title: "Water Lily Pond", artist_id: 3 }
	]
)


