require 'pry'

# create the hash
people = [
  {:name => "Peter", :money => 5, :plays_instrument => true},
  {:name => "Greg", :money => 10, :plays_instrument => false},
  {:name => "Martin", :money => 80, :plays_instrument => true},
  {:name => "Adam", :money => 20, :plays_instrument => false},
  {:name => "Uy", :money => 20, :plays_instrument => false},
  {:name => "Nikki", :money => 90, :plays_instrument => false},
  {:name => "Jon", :money => 10, :plays_instrument => true},
  {:name => "Tina", :money => 15, :plays_instrument => false},
  {:name => "Abera", :money => 8, :plays_instrument => false},
  {:name => "Ben", :money => 7, :plays_instrument => true},
  {:name => "Ricky", :money => 35, :plays_instrument => true},
  {:name => "Steve", :money => 12, :plays_instrument => true},
  {:name => "Michelle", :money => 75, :plays_instrument => false}
]


band_members = []

# Return an array of just people's names
band_members = people.map do |person|
  person[:name]
end

# Return an array of people hashes of the people who have at least $20
rich_people = people.select do |person|
  person[:money] >= 20
end

# Return the hash of the person with the most money
richest = people.max_by do |person|
  person[:money]
end

# If we have at least 5 people that play instruments we can start a band. Can we?
band = people.count do |person|
  person[:plays_instrument]
end

if band >= 5 
  puts "We can start a band!"
else
  puts "We don't have enough people to start a band, sorry!"
end

# a new drum set costs $350, do we collectively have enough money to buy one
total = 0
people.select do |person|
  total = total + person[:money]
end

if total >= 350
  puts "We have $#{total} so we can buy a drum kit! With $#{total - 350} change to spare!"
else
  puts "Sorry, we don't have enough money for a drum kit"
end


# binding.pry