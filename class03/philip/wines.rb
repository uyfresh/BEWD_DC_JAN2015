require 'pry'
wine_cellar = [
  {:label => "Rutherford Hill", :type => "Chardonnay", :color => "white"},
  {:label => "Nina Veneto", :type => "Pinot Grigio", :color => "white"},
  {:label => "Wairau River", :type => "Sauvignon Blanc", :color => "white"},
  {:label => "Tangley Oaks", :type => "Merlot", :color => "red"},
  {:label => "Chimney Rock", :type => "Cabernet Sauvignon", :color => "red"},
  {:label => "Sanford", :type => "Pinot Noir", :color => "red"},
  {:label => "Alderbrook", :type => "Pinot Noir", :color => "red"},
  {:label => "Colavita", :type => "Pinot Noir", :color => "red"},
  {:label => "Markham", :type => "Chardonnay", :color => "white"},
  {:label => "Angeline", :type => "Pinot Noir", :color => "red"}
]

# #Question One:
# wine_cellar.push({label: "Franzia", type: "Box", color: "Red"})

# print wine_cellar

# #Question Two
# wine_cellar.sample

#Question Three
white_wine = wine_cellar.select do |wine|
  wine[:color] == 'white'
end

binding 'pry'

#Question Four
unique_wine = wine_cellar.uniq do |wine|
  wine[:type] 
end

#Question SIX
Pinot_noir = wine_cellar.select do |wine|
  wine[:type] == 'Pinot_noir'
end