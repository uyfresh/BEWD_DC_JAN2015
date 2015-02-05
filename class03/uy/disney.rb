require 'pry'

characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]


#Write code that:
#Prints a random character
characters.shuffle
#Prints the index of "Elsa"
characters.index('Elsa')
#Prints the fifth character (In this case it's Simba)
characters[5]
#Prints a list of all the character names on one line, with each name separated by a pipe: |
str = characters.join(' | ')

#Bonus
#Prints the full names of all of the characters with M names (Mickey Mouse, Mulan, Mufasa)

binding.pry