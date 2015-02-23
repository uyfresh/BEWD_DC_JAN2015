# Greg's List

* Setup a Sinatra app with a `list = []` variable for storing data (similar to class "shopping_list" example).

* Create a view for `get "\new"`.

Include a form in this view with fields for "item", "price", and "location".

Make this view submit to `post "\create"`.

Store the posted data as a hash in the `list` array. Your list variable should look like this:

```
[
  {:item => 'fouton', :price => 100, :location => 'Arlington'},
  {:item => 'unicycle', :price => 25, :location => 'Silver Spring'},
  ... etc ...
]
```
   
* Create a view for `get "/"`. Make this view display an HTML table with rows and columns for all items in the list.

* Create a view for `get "/deals"`. Make this view display an HTML table with rows and columns for all items with a price under $20.

* Create a view for `get "/cities/:location"`. Make this view display an HTML table with rows and columns for all items who's locations match the route variable. Assume a route is formatted as `"/cities/silver_spring"`, and should successfully find a list item with a location of "Silver Spring".

* Dry up your code. Try to make all three list views use a single ERB template.

## Bonus!!

* Make your app persist data using ActiveRecord with an underlying database, rather than just managing items as an array stored in memory.

* Create a view for `get "/search_location"`. Include a form on this view with a "location" field, and make form submits refresh the page with an HTML table of items matching the searched location name. HINT: look up submitting forms using "GET" rather than "POST".