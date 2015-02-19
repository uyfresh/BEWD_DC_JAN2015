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

###Number 1
band_members = people.map do |person|
  person[:name]
end

###Number 2
rich_people = people.select do |person|
  person[:money] >= 20
end

###Number 3
richie_rich = people.max_by do |person|
  person[:money]
end