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

#add a random wine to the cellar
wine_cellar.push({:label => "Boar's Blood", :type => "Blend", :color => "red"})

#returns a random wine
puts wine_cellar.sample

#returns an array of just the white wines (couldn't figure this one out)


#returns an array listing just the unique types of wine
puts wine_cellar.uniq

#Returns an array with the all the wines that have 2-word labels

#Returns an array with the labels of the wines that a type of Pinot Noir