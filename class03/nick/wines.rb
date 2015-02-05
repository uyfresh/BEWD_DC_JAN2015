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

# 1. Adds a wine of your choice to the cellar
wine_cellar.push({:label => "Box_O_Wine", :type => "Franzia", :color => "red"})

#2. Returns a random wine from the cellar
wine_cellar.sample

#3 Returns an array of just the white wines
white_wines = wine_cellar.select do |wine| 
  wine[:color] == 'white' 
end

#4 Returns an array listing the unique types of wine
unique_wines = wine_cellar.uniq do |wine|
  wine[:type]
end

#5 Returns an array with the all the wines that have 2-word labels
two_word_labels = []
two_word_labels = wine_cellar.each do |wine|
  wine[:label] if wine[:label].include?(" ")
end 

#6 Returns an array with the labels of the wines that a type of Pinot Noir
pn_wines = wine_cellar.select do |wine| 
  wine[:type] == 'Pinot Noir' 
end

binding.pry