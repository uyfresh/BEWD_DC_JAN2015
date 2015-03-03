characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]


random_character = characters.shuffle

puts random_character[0]

puts characters[7]

puts characters[4]

i = 0

while i < (characters.length)
	puts "#{characters[i]} | "
	i = i + 1
end
