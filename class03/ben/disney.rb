# GA BEWD: benlcollins
#
# Homework assignment week 2
#
# Disney

# Create array of characters (code from md file)
characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

# Prints a random character
puts "Random Disney character:"
puts characters.sample

# Prints the index of "Elsa"
puts "\nIndex of Elsa:"
puts characters.index('Elsa')

# Prints the fifth character (In this case it's Simba)
puts "\nThe fifth character:"
puts characters[4]

# Prints a list of all the character names on one line, 
# with each name separated by a pipe: |
puts "\nAll character names separated by pipe:"
puts characters.join(" | ")

# Bonus:
# Prints the full names of all of the characters with M names 
# (Mickey Mouse, Mulan, Mufasa)
puts "\nPrints full name beginning with M:"

characters.each do |name|
	if name[0] == "M"
		puts name
	end
end

# Prints the first names of all the characters with two word names 
# (Mickey, Snow, Peter, Donald, Shere, Prince, Jiminy)
puts "\nPrint first name of characters with two word names:"

characters.each do |name|
	if name.split.count == 2
		puts name.split[0]
	end
end



