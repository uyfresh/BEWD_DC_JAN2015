# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
no = Movie.create(title: 'Dr. No', year: 1962, poster_url: 'https://reggiestake.files.wordpress.com/2012/11/dr-no-1962-movie-poster.jpg')
casino = Movie.create(title: 'Casino Royale', year:'2006', poster_url: 'http://the007dossier.com/007Dossier/james-bond-007-movie-posters/casino-royale/Casino%20Royale%20Poster%205.jpg')
quantum = Movie.create(title: 'Quantum of Solace', year:'2008', poster_url: 'http://the007dossier.com/007Dossier/james-bond-007-movie-posters/quantum-of-solace/Quantum%20Of%20Solace%20Poster%203.jpg')
skyfall = Movie.create(title: 'Skyfall', year:'2012', poster_url: 'http://www.impawards.com/2012/posters/skyfall_ver8_xlg.jpg')

Trailer.create(title: 'Trailer 1', embed_url: 'http://www.youtube.com/embed/pw61uyA0F8A', movie: no)
Trailer.create(title: 'Trailer 1', embed_url: 'http://www.youtube.com/embed/fl5WHj0bZ2Q', movie: casino)
Trailer.create(title: 'Trailer 1', embed_url: 'http://www.youtube.com/embed/Q4jY8WxcFMo', movie: quantum)
Trailer.create(title: 'Trailer 1', embed_url: 'http://www.youtube.com/embed/6kw1UVovByw', movie: skyfall)