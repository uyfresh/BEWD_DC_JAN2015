require_relative './moma'

Painting.destroy_all
Artist.destroy_all

Artist.create(
  [
    { name: "Pablo Picasso", nationality: "Spanish" },
    { name: "Vincent Van Gogh", nationality: "Dutch" },
    { name: "Leonardo Da Vinci", nationality: "Italian" },
    { name: "Edgar Degas", nationality: "French" },
    { name: "Andy Warhol", nationality: "American" }    
  ]
)

Painting.create(
   [ 
	{title: "The Starry Night", artist_id: 2 },
	{title: "100 Cans", artist_id: 5 },
	{title: "L'Absinthe", artist_id: 4 },
	{title: "La Mona Lisa", artist_id: 3 },
	{title: "Guernica", artist_id: 1 }
   ]
)

# Bonus: Menu
# * (I) Index - List all Artists
# * (C) Add an Artist
# * (R) View all info for a specific Artist, including their paintings
# * (U) Update a Artist
# * (D) Remove a Artist
# i = Artist.all
# c = Artist.create 
# # r- I have no idea
# u = Artist.Update
# d = Artist.destroy

