# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all

jurassic_world = Movie.create(title: "Jurassic World", year: "2015" , poster_url: "http://oyster.ignimgs.com/wordpress/stg.ign.com/2014/10/jurassic_world_ver2_xlg-720x1067.jpg")

avengers_ultron = Movie.create(title: "The Avengers: Age of Ultron", year: "2015" , poster_url: "https://i.imgur.com/AILjDwV.jpg")

starwars_awakens = Movie.create(title: "Star Wars: The Force Awakes", year: "2015" , poster_url: "http://ia.media-imdb.com/images/M/MV5BMjM4MjI2MDMwM15BMl5BanBnXkFtZTgwODI2MDgzMzE@._V1_SX640_SY720_.jpg")

Trailer.create(title: "Jurassic World - Official Trailer" ,embed_url: "https://www.youtube.com/embed/RFinNxS5KN4" , movie: jurassic_world)
Trailer.create(title: "Avengers: Age of Ultron Official Extended Trailer" ,embed_url: "https://www.youtube.com/embed/D8lWtcgeyg" , movie: avengers_ultron)
Trailer.create(title: "Star Wars: Episode VII - The Force Awakens Official Teaser Trailer" ,embed_url: "https://www.youtube.com/embed/OMOVFvcNfvE" , movie: starwars_awakens)