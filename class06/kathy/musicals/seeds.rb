require_relative './musical'

Musical.destroy_all

Musical.create(
  [
    { title: "The Sound of Music", composer: "Richard Rodgers", lyricist: "Oscar Hammerstein", year: 1959 },
    { title: "Les Miserables", composer: "Claude-Michel Schonberg", lyricist: "Herbert Kretzmer", year: 1985 },
    { title: "West Side Story", composer: "Leonard Bernstein", lyricist: "Stephen Sondheim", year: 1957 },
    { title: "Oklahoma", composer: "Richard Rodgers", lyricist: "Oscar Hammerstein", year: 1943 },
    { title: "Sweeney Todd", composer: "Stephen Sondheim", lyricist: "Stephen Sondheim", year: 1979 },
    { title: "Wicked", composer: "Stephen Schwartz", lyricist: "Stephen Schwartz", year: 2003 }
  ]
)

les_mis = Musical.find_by(title: "Les Miserables")
one_day_more = Song.create(title: "One Day More", musical: les_mis)
who_am_i = Song.create(title: "Who am I?", musical: les_mis)

# jean = Character.create(name: "Jean Valjean")
# marius = Character.create(name: "Marius")

# one_day_more.characters << jean
# one_day_more.characters << marius
# who_am_i.characters << jean