require "pry"

characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

puts characters.sample

puts characters.index("Elsa")

puts characters[4]

characters.each do |character|
  puts character, "|"
end

characters.each do |character|
  puts character, ", " if character[0] == "M" 
end

characters.each do |character|
  puts character.split[0] if character.include?(" ")
end

binding.pry
