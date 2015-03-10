# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
d_and_d = Movie.create (
		{title:"Dumb and Dumber", year: "1994", poster_url: "http://ia.media-imdb.com/images/M/MV5BMTIzNDI5MTc0M15BMl5BanBnXkFtZTYwMjM5NDU5._V1_SX640_SY720_.jpg"}
	)

pulp_f = Movie.create (
		{title:"Pulp Fiction", year: "1994", poster_url: "http://ia.media-imdb.com/images/M/MV5BMjE0ODk2NjczOV5BMl5BanBnXkFtZTYwNDQ0NDg4._V1._SX334_SY475_.jpg"}
	)


Trailer.create([
		{title: "Pulp Fiction Trailer", embed_url:"https://www.youtube.com/watch?v=s7EdQ4FqbhY", movie: pulp_f},
		{title: "Dumb and Dumber Trailer", embed_url:"https://www.youtube.com/watch?v=l13yPhimE3o", movie: d_and_d},
		{title: "Dumb and Dumber Trailer 2", embed_url:"https://www.youtube.com/watch?v=J5pZCQT7JkM", movie: d_and_d}
	])

