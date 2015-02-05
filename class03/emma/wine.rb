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


#1. Adds a wine of your choice to the cellar

wine_cellar.push({:label => "Franzia", :type => "Chardonnay", :color => "white"})

  # 2. Returns a random wine from the cellar
wine_cellar.sample 
  # 3. Returns an array of just the white wines
white_wines = wine_cellar.select do |white|
    (white [:color] == "white")
  end
#puts white_wines

  # 4. Returns an array listing the unique types of wine

unique_wine_types = wine_cellar.map do |types|
    types[:type]
  end

#puts unique_wine_types.uniq

  # 5. Returns an array with the all the wines that have 2-word labels
two_word_wine_find= wine_cellar.select do |names|
    names[:type].index (" ")
  end

  two_word_wine = two_word_wine_find.map do |labels|
    labels[:label]
  end
  #puts two_word_wine

  # 6. Returns an array with the labels of the wines that a type of Pinot Noir
pinot_noir= wine_cellar.select do |names|
    names[:type] == "Pinot Noir"
  end

  pinot_noir_labels = pinot_noir.map do |labels|
    labels[:label]
  end
  #puts pinot_noir_labels
