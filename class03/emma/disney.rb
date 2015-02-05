

characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", 
	"Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", 
	"Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", 
	"Jiminy Cricket"]

	puts "Random disney character: " + characters.sample 
	
	puts "Elsa is at index: #{characters.index('Elsa')}"

	puts "Character at index 4: " + characters[4]

	puts characters.join(" | ")