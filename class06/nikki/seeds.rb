require_relative '.moma.rb'

Artist.create (
  [
    {artist: => "Vincent Van Gogh", nationality: => "Dutch"}
    {artist: => "Pablo Picasso", nationality: => "Spanish"}
    {artist: => "Frida Kahlo", nationality: => "Mexican"}
  ]
)

Painting.create (
  [
    {painting: => "Starry Night"}
    {painting: => "Guernica"}
    {painting: => "My Grandparents, My Parents, and I", artist: }

  ]
)

vvg = Artist.find_by(artist: => "Vincent Van Gogh")
starry_night = Painting.create(painting: => "Starry Night", artist: vvg)

pablo = Artist.find_by(artist: => "Pablo Picasso")
guernica = Painting.create(painting: => "Guernica", artist: pablo)

frida = Artist.find_by(arist: => "Frida Kahlo")
family = Painting.create(painting: => "My Grantparents, My Parents, and I", artist: frida)