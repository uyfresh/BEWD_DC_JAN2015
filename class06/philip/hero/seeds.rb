require_relative './moma'

Painting.delete_all
Artist.delete_all

Artist.create(
  [
    { name: "Pablo Picasso", nationality: "Spanish"},
    { name: "Vincent Van Gogh", nationality: "Dutch"},
    { name: "Salvador Dali", nationality: "Spanish"},
    { name: "Claude Monet", nationality: "French"},
    { name: "Michelangelo", nationality: "Italian"},
    { name: "Kanye West", nationality: "American"}
  ]
)






Painting.create(
  [
    { title: "Starry Night", artist_id: 2},
    { title: "The Creation of Adam", artist_id: 5},
    { title: "The Scream", artist_id: 4},
    { title: "Guernica", artist_id: 1},
    { title: "Clocks", artist_id: 3},
    { title: "Jesus Walks", artist_id: 6}
  ]
)

