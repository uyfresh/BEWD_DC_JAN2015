## Arrays, sorting and blocks

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

random_animals.each do |a|
  puts a + "s"
end


# Return an array of the animals sorted alphabetically
random_animals.each do |a|
  print random_animals.sort
end


# Return an array of the animals sorted reverse alphabetically
random_animals.each do |a|
  puts random_animals.sort.reverse
end

# Return an array of the animals with each individual string reversed

random_animals.map do |animal|
  puts animal.reverse
end

# Return an array of the animals sorted by word length (low to high)

random_animals.sort_by do |animal|
  print random_animals.length
end

# Return an array of the animals sorted alphabetically by the last character in the string

random_animals.sort_by do |animal|
  print animal[-1]
end





