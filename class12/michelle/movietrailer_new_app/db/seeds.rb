# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
Trailer.destroy_all

Movie.create ([
{title: 'Fifty Shades of Grey', year: '2015', poster_url: 'http://www.eonline.com/eol_images/Entire_Site/20141014/rs_634x1005-141114095132-10644711_665591963557478_6990185292071945908_n.jpg'},
{title: 'Kingsman: The Secret Service', year: '2015', poster_url: 'http://ia.media-imdb.com/images/M/MV5BMTkxMjgwMDM4Ml5BMl5BanBnXkFtZTgwMTk3NTIwNDE@._V1_SX640_SY720_.jpg'},
{title: 'Selma', year: '2015', poster_url: 'http://ia.media-imdb.com/images/M/MV5BODMxNjAwODA2Ml5BMl5BanBnXkFtZTgwMzc0NjgzMzE@._V1_SY1200_CR69,0,630,1200_AL_.jpg'}
	]) 

fifty_shades = Movie.find_by(title: "Fifty Shades of Grey")

f_trailer_one = Trailer.create(title: "Fifty Shades of Grey Official Trailer #1", embed_url: "https://www.youtube.com/embed/CQERFnGvi_A", movie: fifty_shades)
f_trailer_two = Trailer.create(title: "Fifty Shades of Grey Official Trailer #2", embed_url: "https://www.youtube.com/embed/Fns7oJeQmZ8", movie: fifty_shades)

kingsman = Movie.find_by(title: "Kingsman: The Secret Service")
k_trailer_one = Trailer.create(title: "Kingsman: The Secret Service | Official Trailer", embed_url: "https://www.youtube.com/embed/m4NCribDx4U", movie: kingsman)
k_trailer_two = Trailer.create(title: "Kingsman: The Secret Service | Official Trailer 2", embed_url: "https://www.youtube.com/embed/kl8F-8tR8to", movie: kingsman)

selma = Movie.find_by(title: "Selma")
s_trailer_one = Trailer.create(title: "Selma Official Trailer #1", embed_url: "https://www.youtube.com/embed/x6t7vVTxaic", movie: selma)
s_trailer_two = Trailer.create(title: "Selma - Trailer #2", embed_url: "https://www.youtube.com/embed/vlYBYMR1bFo", movie: selma)