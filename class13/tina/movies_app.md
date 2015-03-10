# Watch.io (Movies App)

**Objectives:**

* Work with API endpoints.
* Map Rails resources to other data sources.
* Combine third-party data with our own.

## Part 1: Movies

We'll start by creating a simple movie browser app the consumes data from the [Open Movie Database API](http://www.omdbapi.com/). Our movie browser will have two views:

* **Search page** displays lists of search results from here:

```
http://www.omdbapi.com/?s=Batman
```

* **Detail page** displays information for a single movie from here:

```
http://www.omdbapi.com/?i=tt0372784
```

This search/detail view pattern is highly reminiscent of Rails resource paths, so we'll build upon that pattern for our app.

---

**1. Create a new app** called "movies_app", and create its database:

```
rails new movies_app -d postgresql
cd movies_app
rake db:create
```

Add additional gems into the Gemfile:

```
gem 'httparty'
gem 'pry-rails'
```

Finally, install the updated gem bundle and then run the app:

```
bundle install
rails s
```

---

**2. Setup resources and a controller** for our two Movie views. All of our data will come from a third party, so our app just needs a movies "index" (search) and a "show" (detail) page:].

In `config/routes.rb`:

```
root 'movies#index'
resources :movies, only: [:index, :show]
```

Run `rake routes` to see your available resources. Next we'll need a controller for these two actions:

In `app/controllers/movies_controller.rb`:

```
class MoviesController < ApplicationController

  def index
  end
  
  def show
  end

end
```

---
**3. Build a movie search form** on the index page.

In `app/views/movies/index.html.erb`:

```
 <h1>Movie Search</h1>

 <form action="/movies" method="get">
  <label>Search: <input name="search"></label>
  <button>Submit</button>
 </form>
```

This form will submit a search term to its own controller action. The controller action will handle fetching the search term, and then re-render the view with search results.

---

**3. Build the movie search action**. The `movies#index` action will fetch search results, and provide them to the view.

In `movies#index`:

```
def index
  if params[:search]
    search = params[:search].gsub(' ', '+')
    response = HTTParty.get("http://www.omdbapi.com/?s=#{search}")
    results = JSON.parse(response.body)
    @results = results['Search']
  else
    @results = []
  end
end
```

What that is doing:

* It's checking to see if a search term has been submitted.
* **If we have a search term...**
  * URL-format the search term with "+" signs as spaces.
  * Fetch an API response for the search term.
  * Parse the response JSON string into Ruby data.
  * Set the search results array as an instance variable for the view to render.
* **If we do NOT have a search term...**
  * Just set the search results as an empty array so the view has *something* to render.

---

**4. Display search results**. We just loop through the results array, and print everything out.

In `app/views/movies/index.html.erb`:

```
 <h1>Movie Search</h1>

 <form action="/movies" method="get">
  <label>Search: <input name="search"></label>
  <button>Submit</button>
 </form>

 <ul>
  <% @results.each do |result| %>
    <li><a href="/movies/<%= result['imdbID'] %>"><%= result['Title'] %></a></li>
  <% end %>
 </ul>
```

Notice how we're formatting the links to movies? We're setting those links as `/movies/tt0372784`... weird right? While that's an ID, it's not *our* ID. It's the movie's ID through the API. We're basically mimicking RESTful routes, but piggy-backing off of someone else's data.

---

**5. Setup the show action & view** for displaying a movie detail page. This is just going to look at the ID that comes in through our URL, and then request that from the API.

In `movies#show`:

```
def show
  response = HTTParty.get("http://www.omdbapi.com/?i=#{params[:id]}")
  @result = JSON.parse(response.body)
end
```

Once we have that movie's data from the API, we can just print out a few select fields that we want.

In `app/views/movies/show.html.erb`:

```
 <h1><%= @result['Title'] %></h1>
 <p>Genre: <%= @result['Genre'] %></p>
 
 <%= image_tag @result['Poster'] %>
```

## Part 2: Favorites

Browsing movies is all well and good, but we want to save our favorites! To do this, we'll need to persist data in our own database.

---

**1. Setup a Favorite model**. Now, the API is our "definitive" source of movie data, therefore we should always talk to the API for the newest and freshest data available. We want to save movies in our database while storing *as little* hard data as possible. Thus we're only going to persist two things about a favorite movie:

* A `movie_id`, which references the movie's ID through the API. We can always use this ID to link to the movie's detail page.
* A `title` for the movie. We'll need this to display the movie within the user's list of favorites.

So, let's run a migration:

```
rails g migration CreateFavorites movie_id:string title:string
rake db:migrate
```

And create a model in `app/models/favorite.rb`:

```
class Favorite < ActiveRecord::Base
end
```

---

**2. Setup favorites routes and controller actions**. Now, the process of creating favorites is going to be fairly automated: a user should just be able to click a button to favorite a movie. Thus, we're only going to set up a few actions for favorites: an index to show all favorites, and then create and destroy actions.

Add into `config/routes.rb`:

```
resources :favorites, only: [:index, :create, :destroy]
```

Then in `app/controllers/favorites_controller.rb`:

```
class FavoritesController < ApplicationController

  def index
  end

  def create
  end

  def destroy
  end

end
```

---

**3. Add a favorite button** to the `movies#show` page. This button will simply submit a form that creates a favorite for the movie.

In `movies#show`:

```
def show
  response = HTTParty.get("http://www.omdbapi.com/?i=#{params[:id]}")
  @result = JSON.parse(response.body)
  @favorite = Favorite.find_by(movie_id: params[:id])
  
  if !@favorite 
    @favorite = Favorite.new(movie_id: @result['imdbID'], title: @result['Title'])
  end
end
```

This is tricky... we need to check to see if the movie is already saved as a favorite within the database. If it is NOT already a favorite, then we set up a new unsaved favorite with the movie's information filled in. We'll use this Favorite model instance to build a form:

In `app/views/movies/show.html.erb`:

```
 <h1><%= @result['Title'] %></h1>
 <p>Genre: <%= @result['Genre'] %></p>

 <%= image_tag @result['Poster'] %>

 <% if @favorite.new_record? %>
 
  <%= form_for @favorite do |f| %>
    <%= f.hidden_field :movie_id %>
    <%= f.hidden_field :title %>
    <%= f.submit 'Favorite :)' %>
  <% end %>
  
 <% else %>
  This movie is a favorite!
 <% end %>
```

Again, tricky... we're checking the Favorite model to see if it is a new (unsaved) record. A new record means the movie has not yet been favorited, at which time, we'll print out a form with the movie's data hidden in it. If the user clicks the "Favorite" button, then the form will submit the movie's data for persistence.

---

**4. Create a favorite**

In `app/controllers/favorites_controller.rb`:

```
def create
  favorite_params = params.require(:favorite).permit(:movie_id, :title)
  @favorite = Favorite.create(favorite_params)
  redirect_to favorites_path
end
```

This is pretty straight forward: we're setting up strong params, and then creating a favorite based on data submitted by the movie. We're then redirecting back to the movie detail view (yes, this could technically use a path helper for this).

---

**5. Listing all favorites** is pretty simple. We can review our list of favorites at the `/favorites` route. You've done this lots of times:

In `favorites#index`:

```
def index
  @favorites = Favorite.all
end
```

In `app/views/favorites/index.html.erb`:

```
 <h1>Favorites</h1>

 <ul>
  <% @favorites.each do |favorite| %>
    <li><a href="/movies/<%= favorite.movie_id %>"><%= favorite.title %></a></li>
  <% end %>
 </ul>
```

## Part 3: Toggling Favorites

**Work through these final additions**, and explain to yourself what they're doing. These steps will handle destroying an existing favorite:

In `favorites#destroy`:

```
def destroy
  @favorite = Favorite.find(params[:id])
  @favorite.destroy
  redirect_to favorites_path
end
```

In `app/views/movies/show.html.erb`:

```
<% if @favorite.new_record? %>

  <%= form_for @favorite do |f| %>
    <%= f.hidden_field :movie_id %>
    <%= f.hidden_field :title %>
    <%= f.submit 'Favorite :)' %>
  <% end %>
  
<% else %>

  <%= form_for @favorite, :method => :delete do |f| %>
    <%= f.submit 'Unfavorite :(' %>
  <% end %>
  
<% end %>
```