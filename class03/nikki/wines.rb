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

wine_cellar.push({:label => "Good Wine", :type => "Reisling", :color => "white"})
puts wine_cellar.sample

white_wines = wine_cellar.select do |white|
  white [:color] == "white"
end
puts white_wines 

unique_wines = wine_cellar.map do |type|
  types[:type]
end

puts unique_wines

multi_word_wine = wine_cellar.select do |names|
  names[:type].index(" ")
end

list_multi_word_wines = multi_word_wine.map do |label|
  labels[:label]
end

puts list_multi_word_wines

best_wine_pinot_noir = wine_cellar.select do |names|
  names[:type] == "Pinot Noir"
end

labels_pinot_noir = best_wine_pinot_noir.map do |labels|
  labels[:label]
end

puts labels_pinot_noir


binding.pry