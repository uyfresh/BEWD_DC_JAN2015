# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Entry.destroy_all

Entry.create({author: "Tom Collins", \
	image_url: "https://s-media-cache-ak0.pinimg.com/originals/50/10/d5/5010d5de4a04b848429825ac0651ad52.jpg", \
	date_taken: "2013-05-18", \
	caption: "Cyclists slowly climbing the Stelvio"})
Entry.create({author: "John Smith", \
	image_url: "http://www.morethan21bends.com/images/tour_ventoux.jpg", \
	date_taken: "2014-12-02", \
	caption: "Keep going! Almost at the top of Mount Ventoux"})
Entry.create({author: "Sarah Smith", \
	image_url: "http://41.media.tumblr.com/8476f78246711b6afb7fe5c1542ecffb/tumblr_nk8valelTJ1qg4jy9o1_500.jpg", \
	date_taken: "2014-01-18", \
	caption: "Winter climbing up the Gavia"})
Entry.create({author: "Jack Jones", \
	image_url: "https://40.media.tumblr.com/d370871c910d19ca36d1863f930528f6/tumblr_nhwyr2OBDI1tjf45po1_500.jpg", \
	date_taken: "2015-02-18", \
	caption: "Mike Cotty living the life!"})
Entry.create({author: "Bob Williams", \
	image_url: "https://pbs.twimg.com/media/ByPniORIQAAL6cv.jpg:large", \
	date_taken: "2012-02-18", \
	caption: "Wild weather in the Alps."})

# Entry.create({author: "Pauline Stevens", image_url: "https://s-media-cache-ak0.pinimg.com/736x/37/7c/1e/377c1e586f4cf0a03d2dadafee53c3be.jpg", date_taken: "2015-02-18"})

