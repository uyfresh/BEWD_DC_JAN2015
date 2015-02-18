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

#creating an array by extracting the names from each hash
band_members = people.select do |person|
  person [:name]
  print band_members
end



# name of new array=name of old array.map/select do |temp variable|
# condition or action
# end

