require 'pry'
characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]
#1
puts characters.sample

#2 Prints the index of "Elsa"
puts characters.index("Elsa") 

#3 Prints the fifth character (In this case it's Simba)
puts characters[4]

#4 Prints a list of all the character names on one line, with each name separated by a pipe: |
characters.each do |name|
	print "#{name}" + ' | '
end

#5 Prints the full names of all of the characters with M names (Mickey Mouse, Mulan, Mufasa)

m_characters = characters.select do |character| 
	character[0] == 'M'	
end

binding.pry
