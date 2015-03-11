# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.destroy_all
sw = Movie.create({title: "Star Wars The Force Awakens", year: 2016, poster_url: "http://cdn.collider.com/wp-content/uploads/star-wars-the-force-awakens-wallpaper.jpg"})
mj = Movie.create({title: "Mockingjay", year: 2015, poster_url: "http://f2ac077abf790579e809-affeae3ac2c14e4767b90bb891f5ebb1.r57.cf2.rackcdn.com/29384388-babe-11e4-a02c-bc764e11a88c.jpg"})
fr = Movie.create({title: "Frozen", year: 2013, poster_url: "http://geekdad.com/wp-content/uploads/2013/11/frozen_feat.jpg"})

Trailer.destroy_all
sw_trailer1 = Trailer.create({title: "Star Wars The Force Awakens First", embed_url: "https://www.youtube.com/embed/OMOVFvcNfvE", movie: sw})
mj_trailer1 = Trailer.create({title: "Mockingjay First", embed_url: "https://www.youtube.com/embed/3PkkHsuMrho", movie: mj})
fr_trailer1 = Trailer.create({title: "Frozen First", embed_url: "https://www.youtube.com/embed/g8nQDgvjA28", movie: fr})

sw_trailer2 = Trailer.create({title: "Star Wars The Force Awakens Second", embed_url: "https://www.youtube.com/embed/erLk59H86ww", movie: sw})
mj_trailer2 = Trailer.create({title: "Mockingjay Second", embed_url: "https://www.youtube.com/embed/C_Tsj_wTJkQ", movie: mj})
fr_trailer2 = Trailer.create({title: "Frozen Second", embed_url: "https://www.youtube.com/embed/FLzfXQSPBOg", movie: fr})


