# Favorite Gifs

Everyone loves animated Gifs! Here's a productivity app to help you search out and save your favorites. We'll use the fabulous [Giphy API](https://api.giphy.com/) for this app...

* Setup a new Rails application called `favorite_gifs`

* Make a `/search` route pointing to a `search#index` controller action.

* Add a form to the seach view. Make the form submit a "search" param back to the `search#index` action via GET.

* When the `search#index` action recieves a "search" param, have it fetch results from the Giphy API using the following API:

```
http://api.giphy.com/v1/gifs/search?q=SEARCH+TERM&api_key=dc6zaTOxFJmzC
``` 

**Example:**

[http://api.giphy.com/v1/gifs/search?q=angry+panda&api_key=dc6zaTOxFJmzC](http://api.giphy.com/v1/gifs/search?q=angry+panda&api_key=dc6zaTOxFJmzC)

* Render the `fixed_width` image URLs returned for each search result into image tags (FTW!!).

* Along with each image, render out the following form that submits the image URL to a `/favorites` resource:

```
<%= form_tag "/favorites" do %>
  <input type="hidden" name="image_url" value="<%= GIF_IMAGE_URL %>">
  <button>Add to favorites</button>
<% end %>
```

* Setup a `Favorite` model with a single attribute: "image_url".

* Setup a `/favorites` resource with "index" and "create" actions.

* POST `/favorites` should create a favorite from the submitted "image_url" param.

* GET `/favorites` should display a list of all of your favorite GIFs.