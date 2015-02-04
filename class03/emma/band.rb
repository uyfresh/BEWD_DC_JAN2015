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

just_names = people.map do |person|
    person [:name]
  end

less_than_20_dollars = people.map do |person|
  if (person[:money] < 20) == true
    person [:name]
  end
end

count = 0
enough_for_band = people.map do |person|
  if (person[:plays_instrument] == true)
    count = count + 1
  end
end

if count >= 5 
  puts "We have enough for a band"
else 
  puts "we don't have enough for a band"
end 
  puts less_than_20_dollars