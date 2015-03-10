# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all

diving_bell = Movie.create ({title: "The Diving Bell and the Butterfly", year: "2007", poster_url: "http://25.media.tumblr.com/tumblr_mdptr6NtZj1qh4ndio1_1280.jpg"})

Trailer.create({
	title: "The Diving Bell and the Butterfly Trailer",
	embed_url: "https://www.youtube.com/embed/G69Zh7YIg8c",
	movie: diving_bell
	})

Trailer.create({
	title: "The Diving Bell and the Butterfly Clip",
	embed_url: "https://www.youtube.com/embed/NOZMlcY9MC8",
	movie: diving_bell
	})

godfather = Movie.create ({title: "Godfather II", year: "1974", poster_url: "http://vignette3.wikia.nocookie.net/filmguide/images/a/ac/The-godfather-part-ii-1974-3e490.jpg/revision/latest?cb=20120327061641"})

Trailer.create({
	title: "Godfather 2",
	embed_url: "https://www.youtube.com/embed/3KD8c5MHrn4",
	movie: godfather
	})

Trailer.create({
	title: "Godfather 2",
	embed_url: "https://www.youtube.com/embed/qJr92K_hKl0",
	movie: godfather
	})

strangelove = Movie.create ({title: "Dr. Strangelove", year: "1964", poster_url: "http://posterpress.us/uploads/d/dr_strangelove_or_how_i_learned_to_stop_worrying_and_love_the_bomb_1964.jpg"})

Trailer.create({
	title: "Dr. Strangelove",
	embed_url: "https://www.youtube.com/embed/1gXY3kuDvSU",
	movie: strangelove
	})

Trailer.create({
	title: "Dr. Strangelove HD",
	embed_url: "https://www.youtube.com/embed/pgd_aJBBRfs",
	movie: strangelove
	})