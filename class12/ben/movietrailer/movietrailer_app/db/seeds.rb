# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
Trailer.destroy_all

# Imitation Game
im_game = Movie.create({
	title: "The Imitation Game",
	year: 2014,
	poster_url: "http://i.telegraph.co.uk/multimedia/archive/03051/The_Imitation_Game_3051179c.jpg"
	})
Trailer.create({
	title: "The Imitation Game - Official Trailer",
	embed_url: "S5CjKEFb-sM",
	movie: im_game
	})
Trailer.create ({
	title: "The Imitation Game - NEW Official UK Trailer",
	embed_url: "j2jRs4EAvWM",
	movie: im_game
	})


# Hobbit
hobbit = Movie.create({
	title: "The Hobbit: The Battle of the Five Armies",
	year: 2014,
	poster_url: "http://ia.media-imdb.com/images/M/MV5BODAzMDgxMDc1MF5BMl5BanBnXkFtZTgwMTI0OTAzMjE@._V1_SX640_SY720_.jpg"
	})
Trailer.create({
	title: "The Hobbit: The Battle of the Five Armies - Official Teaser Trailer",
	embed_url: "ZSzeFFsKEt4",
	movie: hobbit 
	})
Trailer.create({
	title: "The Hobbit: The Battle of the Five Armies - Official Main Trailer",
	embed_url: "iVAgTiBrrDA",
	movie: hobbit
	})


# Unbroken
unbroken = Movie.create({
	title: "Unbroken",
	year: 2014,
	poster_url: "http://th08.deviantart.net/fs71/PRE/i/2014/064/8/7/unbroken__2014__by_myrmorko-d78zol0.jpg"
	})
Trailer.create({
	title: "Unbroken Official Trailer #1",
	embed_url: "XrjJbl7kRrI",
	movie: unbroken
	})
Trailer.create({
	title: "Unbroken Official Trailer #2",
	embed_url: "X8mBzKLhL0U",
	movie: unbroken
	})


# Wild
wild = Movie.create({
	title: "Wild",
	year: 2014,
	poster_url: "http://www.pmags.com/wp-content/uploads/2014/12/wild_ver2.jpg"
	})
Trailer.create({
	title: "Wild Official Trailer #1",
	embed_url: "tn2-GSqPyl0",
	movie: wild
	})
Trailer.create({
	title: "Wild Official Trailer + Trailer Review",
	embed_url: "bVntjAUFa14",
	movie: wild
	})


# American Sniper
sniper = Movie.create({
	title: "American Sniper",
	year: 2014,
	poster_url: "http://ia.media-imdb.com/images/M/MV5BMTkxNzI3ODI4Nl5BMl5BanBnXkFtZTgwMjkwMjY4MjE@._V1_SX640_SY720_.jpg"
	})
Trailer.create({
	title: "American Sniper - Official Trailer",
	embed_url: "99k3u9ay1gs",
	movie: sniper
	})
Trailer.create({
	title: "American Sniper - Official Trailer 2",
	embed_url: "5bP1f_1o-zo",
	movie: sniper
	})


# Birdman
birdman = Movie.create({
	title: "Birdman",
	year: 2014,
	poster_url: "http://i.telegraph.co.uk/multimedia/archive/03103/BIRDMAN_INT_London_3103829k.jpg"
	})
Trailer.create({
	title: "Birdman Official US Release Trailer",
	embed_url: "8jAfBd3g6bA",
	movie: birdman
	})
Trailer.create({
	title: "BIRDMAN - Official Teaser",
	embed_url: "0PdLmZG_6ZE",
	movie: birdman
	})


# Theory of Everything
everything = Movie.create({
	title: "Theory of Everything",
	year: 2014,
	poster_url: "http://www.cineworld.co.uk/assets/media/films/7838_poster_iphone.jpg"
	})
Trailer.create({
	title: "The Theory of Everything - Official Trailer",
	embed_url: "Salz7uGp72c",
	movie: everything
	})
Trailer.create({
	title: "The Theory of Everything - Official Trailer #2",
	embed_url: "8RHU0X5CYpU",
	movie: everything
	})


