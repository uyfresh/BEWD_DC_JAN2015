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
wine_cellar.push([{:label => "Elsa Bianchi", :type => "Malbec", :color => "red"}])

#2. Returns a random wine from the cellar

random_wine = wine_cellar.shuffle

puts random_wine[0]

#3. Returns an array of just the white wines

white_wine = wine_cellar.select do |wine|
    wine[:color] == "white"
end
puts white_wine



binding.pry