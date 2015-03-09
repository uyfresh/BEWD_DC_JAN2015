## Arrays, sorting and blocks

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.each do |i|
    puts i + "s"
end

# Return an array of the animals sorted alphabetically
puts random_animals.sort

# Return an array of the animals sorted reverse alphabetically
puts random_animals.sort.reverse

# Return an array of the animals with each individual string reversed
random_animals.map do |a|
	puts a.reverse
end

# Return an array of the animals sorted by word length (low to high)
random_animals.sort_by do |animal|
	animal.length
end

# Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort_by do |animal|
	animal[-1]
end