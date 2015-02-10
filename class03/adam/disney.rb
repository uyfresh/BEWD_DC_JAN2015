#array
characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

#random character
puts characters.sample

#index of "Elsa"
puts characters.index("Elsa")

#fifth character
puts characters[4]

#characters of each name on a line, separated by pipe
puts characters.join("|")
