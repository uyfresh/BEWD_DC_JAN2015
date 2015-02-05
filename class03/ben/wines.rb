# GA BEWD: benlcollins
#
# Homework assignment week 2
#
# Wines

# Create array of hashes called wine cellar (from md file)
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
wine_cellar.push({:label => "Bluemont Vineyard", :type => "Norton", :color => "red"})

# 2. Returns a random wine from the cellar
puts "Random wine from cellar:"
puts wine_cellar.sample

# 3. Returns an array of just the white wines
whites = wine_cellar.select do |wine|
  wine[:color] == "white"
end

puts "\nAll the whites in the cellar:"
puts whites

# 4. Returns an array listing the unique types of wine
types = wine_cellar.map do |wine|
  wine[:type]
end.uniq

puts "\nThe unique types of wine:"
puts types

# 5. Returns an array with the all the wines that have 2-word labels
two_word_wines = wine_cellar.select do |wine|
  if wine[:label].split.count == 2
    wine
  end
end

puts "\nThe two word wines are:"
puts two_word_wines

# 6. Returns an array with the labels of the wines that a type of Pinot Noir
pinots = wine_cellar.select do |wine|
  wine[:type] == "Pinot Noir"
end.map do |pinot|
  pinot[:label]
end

puts "\nThe Pinot Noir wines are:"
puts pinots

