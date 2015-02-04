ruby_wine_cellar = [
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

# Adds a wine of choice to the cellar 
ruby_wine_cellar.push({:label => "Richebourg", :type => "Pinot Noir", :color => "red"})

# Returns a random wine from the cellar. 
puts "This is a random wine."
puts ruby_wine_cellar.sample

# returns an array with only white wines in the cellar. 
white_wines = ruby_wine_cellar.select do |wine|
  wine[:color] == "white"
end
puts "These are the white wines."
puts "#{white_wines}\n"

# returns an array listing unique types of wine
ruby_wine_cellar_unique = ruby_wine_cellar.uniq
puts "These are unique wines."
puts ruby_wine_cellar_unique

# returns an array with the wines that have 2-word labels. 
wine_2 = []
ruby_wine_cellar.map do |wine|
    if wine[:label].split.size == 2
        wine_2.push(wine[:label])
    end
end
puts "These are wines with two names."
puts wine_2

#returns all the Pinot Noir's in the collection
wine_pinot = []
ruby_wine_cellar.map do |pinot|
    if pinot[:type] == "Pinot Noir"
        wine_pinot.push(pinot[:label])
    end
end
puts "These are all the Pinot Noirs."
puts wine_pinot