require 'pry'

characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

puts characters.sample 
puts characters.index("Elsa")
puts characters[4]
puts characters.join("|")


# Bonus

puts characters.select { |character| character[0] == "M" }
# Prints the full names of all of the characters with M names (Mickey Mouse, Mulan, Mufasa)

puts characters.select { |character| character.split.count == 2 }

#can't figure out how to only return the first name or only display the first name  
#long_names = characters.select { |character| character.split.count == 2 }



# Prints the first names of all the characters with two word names (Mickey, Snow, Peter, Donald, Shere, Prince, Jiminy)

binding.pry