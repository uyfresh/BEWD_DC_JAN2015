#  PROGRAM:   DISNEY
#  AUTHOR:    Sidney Cooper
#  Program manipulates an array of Disney Characters


characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

# random character
puts characters.sample

# return index for Elsa
puts characters.rindex("Elsa")

# returns the fifth character
puts characters[4]

# print each character separated by a pipe
characters.each {|x| print x, "|"}
puts " "


