require_relative './moma'


Artist.destroy_all
Painting.destroy_all


Artist.create(
  [
    { name: "Vincent van Gogh", nationality: "Dutch"},
    { name: "Pablo Picasso", nationality: "Spanish"},
    { name: "Claude Monet", nationality: "French"},
  ]
)

van_gogh = Artist.find_by(name: "Vincent van Gogh")

starry_night = Painting.create(title: "The Starry Night", artist: van_gogh)
sorrow = Painting.create(title: "Sorrow", artist: van_gogh)
olive_trees = Painting.create(title: "The Olive Trees", artist: van_gogh)


pablo_picasso = Artist.find_by(name: "Pablo Picasso")

self_portrait = Painting.create(title: "Self Portrait (Yo)", artist: pablo_picasso)
crow_family = Painting.create(title: "Family with a Crow", artist: pablo_picasso)
olive_trees = Painting.create(title: "The Olive Trees", artist: pablo_picasso)


claude_monet = Artist.find_by(name: "Claude Monet")

water_lilies = Painting.create(title: "Water Lilies", artist: claude_monet)
agapanthus = Painting.create(title: "Agapanthus", artist: claude_monet)
pourville_cliff = Painting.create(title: "On the Cliff at Pourville, Clear Weather", artist: claude_monet)