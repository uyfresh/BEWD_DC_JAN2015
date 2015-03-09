# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
beauty = Movie.create({movie_title: "American Beauty", year: "1999", poster_url: "http://upload.wikimedia.org/wikipedia/en/b/b6/American_Beauty_poster.jpg"})

america = Movie.create({movie_title: "Coming to America", year: "1988", poster_url:"http://thelaughbutton.com/site2/wp-content/uploads/2013/11/Coming-to-America.jpg"})

ice_storm = Movie.create({movie_title: "The Ice Storm", year: "1997", poster_url: "http://ecx.images-amazon.com/images/I/51GVTMWRH5L.jpg"})

Trailer.destroy_all
Trailer.create([{trailer_title: "The Ice Storm Trailer 1", 
	embed_url: "https://www.youtube.com/watch?v=OA0stGEfhmw", 
	movie: ice_storm},
	{trailer_title: "The Ice Storm Trailer 2", 
	embed_url: "https://www.youtube.com/watch?v=IjXMWjoX8L4", 
	movie: ice_storm},
	{trailer_title: "American Beauty Trailer 1", 
	embed_url: "https://www.youtube.com/watch?v=hIq9Zjw0mm8", 
	movie: beauty},
	{trailer_title: "American Beauty Trailer 2", 
	embed_url: "https://www.youtube.com/watch?v=B0S9OJEcXow", 
	movie: beauty},
	{trailer_title: "Coming to America Trailer 1", 
	embed_url: "https://www.youtube.com/watch?v=fqfJqLFQSIk", 
	movie: america},
	{trailer_title: "Coming to America Trailer 1",
	embed_url: "https://www.youtube.com/watch?v=0uW9AbMBoFM", 
	movie: america}])