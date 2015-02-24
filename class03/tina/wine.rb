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
  {:label => "Angeline", :type => "Pinot Noir", :color => "red"},
  {:label => "Antichi", :type => "Voulet", :color => "red"}
]

wine_cellar.shuffle(random: Random.new(1))

wine_cellar.each do |whitewine| 
 	 puts whitewine
 end	

 white_wines = []
 white_wines = wine_cellar.select do |wine|
 	 wine [:color] == "white"
 end

 	unique_wines = []
 	unique_wines = wine_cellar.select do |wine|
 		wine [:type] == "unique_wines"
 end
 	
 	multi_word_wines = []
 	multi_word_wines = wine_cellar.select do |wine|
 		wine [:label] = "multi_word_wines" 
 	end		

  labels_pinot_noir = multi_word_wines.select do |label|
        labels[:label]
  end      

 

binding.pry