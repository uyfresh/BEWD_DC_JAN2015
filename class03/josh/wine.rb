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

# Adds a wine of your choice to the cellar
wine_cellar.push(:label => "Raywood", :type => "Merlot", :color => "red")


puts wine_cellar.sample
# Returns a random wine from the cellar

whites =  wine_cellar.select { |wine| wine[:color]="white" }
#puts whites
# Returns an array of just the white wines

uniques = wine_cellar.uniq { |wine| wine[:type] }
# puts uniques
# Returns an array listing the unique types of wine

two_words = wine_cellar.select { |wine| wine[:label].split.count == 2 }
# puts two_words
# Returns an array with the all the wines that have 2-word labels

pinot_noirs = wine_cellar.select { |wine| wine[:type] == "Pinot Noir" }
# puts pinot_noirs
# Returns an array with the labels of the wines that a type of Pinot Noir



binding.pry