characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]
puts characters.sample

puts characters.find_index("Elsa")

puts characters[4]

puts characters.join("|")


mnames=[]
characters.select do |name|
if name > "L" && name < "N"

mnames.push (name) 
end 
puts mnames
end



