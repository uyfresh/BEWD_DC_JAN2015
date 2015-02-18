require_relative './moma.rb'


Painting.destroy_all
Artist.destroy_all

Artist.create(
	[{name: "Pablo Picasso", nationality: "Spain"}, {name: "Vincent Van Gogh", nationality: "The Netherlands"}, {name: "Shahzia Sikander", nationality:"Pakistan"}])
picasso = Artist.find_by(name: "Pablo Picasso").id()
van_gogh = Artist.find_by(name: "Vincent Van Gogh").id()
sikander = Artist.find_by(name: "Shahzia Sikander").id()

Painting.create(name: "Anchor", year: 1999, artist_id: sikander)
Painting.create(name: "Afloat", year: 2001, artist_id: sikander)
Painting.create(name: "Guernica", year: 1937, artist_id: picasso)
Painting.create(name: "The Starry Night", year: 1889, artist_id: van_gogh)

binding.pry
