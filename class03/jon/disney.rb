require 'pry'

characters = ["Mickey Mouse", 
							"Aladdin", 
							"Snow White", 
							"Peter Pan", 
							"Simba", 
							"Mulan", 
							"Goofy", 
							"Elsa", 
							"Tarzan", 
							"Donald Duck", 
							"Shere Khan", 
							"Prince Charming", 
							"Cinderella", 
							"Mufasa", 
							"Belle", 
							"Jiminy Cricket"]


# Prints a random character
random_character = characters.sample
puts random_character

# Prints the index of "Elsa"
puts characters[7]

# Prints the fifth character (In this case it's Simba)
puts characters[4]

# Prints a list of all the character names on one line, 
# with each name separated by a pipe: |

puts characters.join('|')

# Bonus:
# Prints the full names of all of the characters with M names 
# (Mickey Mouse, Mulan, Mufasa)

m_names = characters.select do |name|
	name.include? "M"
end
puts m_names

# Prints the first names of all the characters with two word 
# names (Mickey, Snow, Peter, Donald, Shere, Prince, Jiminy)

two_word_names = characters.select do |name|
	name.include?(" ").split(' ').first
end

# refactored below to do in 2 lines
# two_word_names.map! do |fullname|
# 	puts fullname.split(' ').first
# end

# two_word_names.each do |name|
# 	puts name.first
# end


