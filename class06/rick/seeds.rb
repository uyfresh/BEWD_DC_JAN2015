require_relative './moma.rb'


Painting.destroy_all
Artist.destroy_all
Style.destroy_all 

Style.create(
	[{name: "Surrealism"}, 
	{name: "Cubism"}, 
	{name: "Post-Impressionism"}])
surreal = Style.find_by(name: "Surrealism").id()
cubist = Style.find_by(name: "Cubism").id()
post_imp = Style.find_by(name: "Post-Impressionism").id()


Artist.create(
	[{name: "Pablo Picasso", nationality: "Spain", style_id: cubist}, 
	{name: "Vincent Van Gogh", nationality: "The Netherlands", style_id: post_imp}, 
	{name: "René François Ghislain Magritte", nationality:"Beligan", style_id: surreal}])
picasso = Artist.find_by(name: "Pablo Picasso").id()
van_gogh = Artist.find_by(name: "Vincent Van Gogh").id()
magritte = Artist.find_by(name: "René François Ghislain Magritte").id()

Painting.create(name: "The Son of Man", year: 1964, artist_id: magritte)
Painting.create(name: "The Human Condition", year: 1933, artist_id: magritte)
Painting.create(name: "Guernica", year: 1937, artist_id: picasso)
Painting.create(name: "The Starry Night", year: 1889, artist_id: van_gogh)

binding.pry