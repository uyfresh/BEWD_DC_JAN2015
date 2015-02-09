#1 add a wine of your choice to the cellar
 
wine_cellar.push({:label => "Castello Di Ama", :type => "Chianti",  :color => "red"})
 
#2 return a random wine from the cellar
 
wine_cellar.sample
 
#3 return an array of just the white wines
 
white_wines = wine_cellar.select do |white|
 
(white [:color] == "white"
 
puts white_wines
 
#4 return an array listing the unique types of wine
 
unique_wines = wine_cellar.map do |types|
types[:type]
 
puts unique_wines.uniq
 
#5 return an array with the al the wines that have 2-words labels
wine_with_two_words = wine_cellar.select do |names|
names[:type.index ("  ")
 end
 
wine_with_two_words = wine_with_two_words.map do |labels|
labels [:label]

puts wine_with_two_words	
 end

#6 return an array with the labels of the wines that a type of pinot noir
 
pinot_noir = wine_cellar.select do |names|
names[:type] == "Pinot Noir"
end
 
pinot_noir_labels = pinot_noir.map do |labels|
labels[:label]
puts pinot_noir_labels
end

