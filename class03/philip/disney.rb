require 'pry'
characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

# # Question One
# puts characters.sample

# #Question Two
# puts characters.index("Elsa")

# #Question Three
# puts characters[4]

# #Question Four
# characters.each do |name|
# 	print "#{name}" + ' | '
# end

#Question 5 
m_characters = characters.select do |character|
	 character[0] == 'M'
end

binding.pry