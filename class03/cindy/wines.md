### Wine Cellar

- Here is an array containing some wines

```ruby
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

```

Create a file called `wine.rb`. Write code that does the following. Use comments to label which part of your code is for which number.

  1. Adds a wine of your choice to the cellar
  2. Returns a random wine from the cellar
  3. Returns an array of just the white wines
  4. Returns an array listing the unique types of wine
  5. Returns an array with the all the wines that have 2-word labels
  6. Returns an array with the labels of the wines that a type of Pinot Noir