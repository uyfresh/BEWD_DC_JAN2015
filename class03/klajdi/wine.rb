require "pry"

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

# 1. Adds wine of choice
wine_cellar.push({:label => "Pig Wine", :type => "Tempranillo", :color => "red"})

# 2. Returns random wine 
puts wine_cellar.sample

# 3. Returns array with white wines
white_wines = []
white_wines = wine_cellar.select do |wine|
  wine[:color] == "white"
end

# 4. Returns array of unique wines
unique_wine = []
unique_wine = wine_cellar.uniq do |wine|
  wine[:type]
end

# 5. Returns array of all wines with two word labels
two_word_labels = []
two_word_labels = wine_cellar.select do |wine|
  wine if wine[:label].include?(" ")
end

# 6. Returns array with the label names of pinot noirs
pinot_noir = []
pinot_noir = wine_cellar.map do |wine|
  wine[:label] if wine[:type] == "Pinot Noir"
end
pinot_noir.delete(nil)

binding.pry