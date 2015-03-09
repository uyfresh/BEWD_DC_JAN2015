## Arrays, sorting and blocks

require 'pry'

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
puts "add s"
random_animals.each do |single|
	puts single + "s"
end

# Return an array of the animals sorted alphabetically
puts "alphabetical:"
puts random_animals.sort
# Return an array of the animals sorted reverse alphabetically
puts "reverse alphabet:"
puts random_animals.sort.reverse
# Return an array of the animals with each individual string reversed
puts "flipped letters"
random_animals.each do |forward|
	puts forward.reverse
end
# Return an array of the animals sorted by word length (low to high)

puts random_animals.sort.length

# Return an array of the animals sorted alphabetically by the last character in the string

binding.pry





