require 'pry'
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
  #1
band_members = people.map do |person|
	person[:name]
end 

#2
rich_people = people.select do |person|
	person [:money] >=20
end


#3
richy_rich = people.max_by do |person|
	person [:money]
end 

#4 If we have at least 5 people that play instruments we can start a band. Can we? (Return the number of people that play instruments)
can_play = people.count do |music|
	music [:plays_instrument]
end


# 5. If a new drum set costs $350, do we collectively have enough money to buy one? (Return the sum of all our money)

# total_money = people.reduce do |sum.to_i|
# 	sum [:money].to_i
# end

# sum = people.map{|i|i.money}.reduce(:+)
sum = people.reduce(0) {|sum,total_money| sum + total_money[:money].to_f }


binding.pry