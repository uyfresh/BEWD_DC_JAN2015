require_relative './moma'  # pulls in the class definition

Artist.destroy_all

Artist.create(
  [
    { name: "Jackson Pollack", nationality: "American"},
    { name: "Peter Max", nationality: "American"},
    { name: "Grant Wood", nationality: "American"},
    { name: "Pablo Picasso", nationality: "Spanish"},
    { name: "Vincent Van Gogh", nationality: "Dutch"},
    { name: "Claude Monet", nationality: "French"}
  ]
)

Painting.destroy_all

Painting.create(
  [
    { title: "The Deep", artists_id: 1},
    { title: "LOVE", artists_id: 2},
    { title: "American Gothic", artists_id: 3},
    { title: "Guernica", artists_id: 4},
    { title: "Starry Night", artists_id: 5},
    { title: "The Magpie", artists_id: 6}
  ]
)