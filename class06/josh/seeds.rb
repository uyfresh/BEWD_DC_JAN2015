require_relative './moma'

Artist.destroy_all 

Artist.create (
		[
			{name: "Pablo Picasso", nationality: "Spain"},
			{name: "Vincent Van Gogh", nationality: "Netherlands"},
			{name: "Leonardo Da Vinci", nationality: "Italy"}
		]
	)

pp = Artist.find_by(name:"Pablo Picasso")
vvg = Artist.find_by(name:"Vincent Van Gogh")
ldv = Artist.find_by(name:"Leonardo Da Vinci")

weeping_woman = Painting.create(title:"The Weeping Woman", artist:pp)
starry_night = Painting.create(title:"Starry Night", artist:vvg)
last_supper = Painting.create(title:"The Last Supper", artist:ldv)
mona_lisa = Painting.create(title:"The Mona Lisa", artist:ldv)
ventruvian_man = Painting.create(title:"The Ventruvian Man", artist:ldv)

