characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

#Prints a random character
puts characters.shuffle[0]

#Prints the index of "Elsa"
puts characters.index('Elsa')

#Prints the fifth character
puts characters[4]

#Prints a list of all the character names on one line, with each name separated by a pipe
puts characters * " | "