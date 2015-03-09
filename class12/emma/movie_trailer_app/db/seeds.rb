# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movie = Movie.create(title: 'Avengers',poster_url:'ca;kjsd', year: "2013")

Trailer.create(title: "Trailer 1", embed_url:"trailer1", movie_id: movie)
Trailer.create(title: "Trailer 2", embed_url:"trailer2", movie_id: movie)


movie_two = Movie.create(title: "X-Men", poster_url:"ca;kjsd", year: '2013')

Trailer.create(title: "Trailer 1", embed_url:"trailer1", movie_id: movie_two)
Trailer.create(title: "Trailer 2", embed_url:"trailer2", movie_id: movie_two)

movie_three = Movie.create(title: "Birdman", poster_url:"ca;kjsd", year: '2014')

Trailer.create(title: "Trailer 1", embed_url:"trailer1", movie_id: movie_three)
Trailer.create(title: "Trailer 2", embed_url:"trailer2", movie_id: movie_three)

