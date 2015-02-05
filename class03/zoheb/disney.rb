ruby_characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

puts ruby_characters.sample + " \n"

puts ruby_characters[4] + " \n"

ruby_characters.each do |character|
	print "#{character}|"
end
puts " \n"

characters_m = []
ruby_characters.each do |charac_m|
	if charac_m[0] == "M"
		characters_m.push(charac_m)
	end
end
print characters_m
