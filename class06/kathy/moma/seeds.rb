require_relative './moma'

Painting.destroy_all
Artist.destroy_all



Artist.create(
  [
    { name: "Pablo Picasso", nationality: "Spanish" },
    { name: "Vincent Van Gogh", nationality: "Dutch" },
    { name: "Pierre-August Renoir", nationality: "French" },
    { name: "Paul Cezanne", nationality: "French" },
    { name: "Paul Gauguin", nationality: "French" },
    { name: "Mary Cassatt", nationality: "American" }
  ]
)

picasso = Artist.find_by(name: "Pablo Picasso")
van_gogh = Artist.find_by(name: "Vincent Van Gogh")
renoir = Artist.find_by(name: "Pierre-August Renoir")
cezanne = Artist.find_by(name: "Paul Cezanne")name
gauguin = Artist.find_by(name: "Paul Gauguin")
cassatt = Artist.find_by(name: "Mary Cassatt")



guernica = Painting.create(title: "Guernica", artist: picasso)
starry_night = Painting.create(title: "Starry Night", artist: van_gogh)
boating_party = Painting.create(title: "Luncheon of the Boating Party", artist: renoir)
card_players = Painting.create(title: "The Card Players", artist: cezanne)
when_marry = Painting.create(title: "When Will You Marry?", artist: gauguin)
childs_bath = Painting.create(title: "The Child's Bath", artist: cexitassatt)

binding.pry
