# Hooking our model up to controllers and views

- We are going to be building a one model CRUD app (CRUD = Create, Read, Update, Destroy)
- Today we are focused on Creating and Reading

## Setup a homepage for our app
- Create a route in `config/routes.rb` sending a GET request to the root path to the welcome controller, index action.
- Create the welcome controller with index action
- Create the corresponding view and add some HTML

## RESTful Routes

- REST is a way of structuring our urls around "resources". This is a convention summed up very nicely by this table:

![](http://s30.postimg.org/6mb90jldt/routes.png)

- Thus we are going to focus on these (one at a time) today:
  - Index
  - New
  - Create
  - Show

### Index

- Write the route for index in `config/routes.rb`: `get "/dogs", to: "dogs#index"`
- Create the `dogs_controller`:
```ruby
class DogsController < ApplicationController
  def index
    render :index
  end
end
```

- Create the `dogs/index.html.erb` file for the view:
```html
<h1>Dogs Index</h1>
```

- Update the controller index action so it pulls from the model the information we want:
```ruby
  def index
    @dogs = Dog.all
    render :index
  end
```

- Update the index view so it displays the information from the database that we pass in using the instance variable:
```erb
<ul>
  <% @dogs.each do |dog| %>
    <li><a href="/dogs/<%= dog.id %>"><%= dog.name %></a></li>
  <% end %>
</ul>
```

### New
- Route: `get "/dogs/new", to: "dogs#new"`
- Controller:
```ruby
  def new
    render :new
  end
```
- View: (remember for security reasons, forms need authenticity tokens)
```erb
<h1> Create a new Puppy! </h1>

<form action="/dogs" method="POST">
  <input name="authenticity_token" type="hidden" value="<%= form_authenticity_token %>" />
  <label>
    Name:
    <input type="text" name="name" />
  </label>

  <label>
    Image URL:
    <input type="text" name="image_url" />
  </label>

  <label>
    Age:
    <input type="integer" name="age" />
  </label>

  <button>Submit!</button>
</form>
```

### Create

- Route: `post "/dogs", to: "dogs#create"`
- Controller: 
```ruby
  def create
    Dog.create({name: params[:name], image_url: params[:image_url], age: params[:age].to_i})
    redirect_to "/dogs" 
  end
```

### Show
- Route: `get "/dogs/:id", to: "dogs#show"`
- Controller:
```ruby
  def show
    @dog = Dog.find(params[:id])
    render :show
  end
```
- View:
```erb
<a href="/dogs">See all of the cute dogs! :)</a>

<h1><%= @dog.name %> is <%= @dog.age %> years old</h1>
<img src="<%= @dog.image_url %>">
```

### Bonus
- Try to figure out Edit, Update and Destroy