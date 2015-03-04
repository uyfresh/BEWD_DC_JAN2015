Create your Rails app and your database
```bash
rails new library_app -d postgresql
cd library_app
rake db:create
```

Add pry to your `Gemfile`
```ruby
gem 'pry-rails'
```
```bash
bundle install
```

Setup your Authors table
```bash
rails g migration CreateAuthors first_name:string last_name:string bio:text
rake db:migrate
```

Setup your Author Model
```ruby
class Author < ActiveRecord::Base
end
```

Setup your routes for Authors in the `config/routes.rb` file
```ruby
root "authors#index"
resources :authors, except: [:edit, :update]
```

Setup your Authors Controller
```ruby
class AuthorsController < ApplicationController

  def index
    @authors = Author.all.order(:last_name)
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :bio)
  end
end
```

Setup your Index View
```erb
<h1>Authors</h1>

<ul>
<% @authors.each do |author| %>
  <li><%= link_to "#{author.last_name}, #{author.first_name}", author %></li>
<% end %>
</ul>

<%= link_to "Add an author", new_author_path %>
```

Setup your New View
```erb
<h1>Add an author</h1>

<%= render 'form' %>
```

Setup your Form Partial
```erb
<%= form_for @author do |f| %>
  <p>
    <%= f.label :first_name %>
    <%= f.text_field :first_name %>
  </p>
  <p>
    <%= f.label :last_name %>
    <%= f.text_field :last_name %>
  </p>
  <p>
    <%= f.label :bio %>
    <%= f.text_field :bio %>
  </p>

  <%= f.submit %>
<% end %>
```

Setup your Show View
```erb
<p><%= link_to "Authors", authors_path %> / <%= @author.first_name %></p>

<h1><%= @author.first_name %></h1>
```

---

We can refactor our AuthorsController and DRY it up using a before_action. Start by adding this method to the private section of our controller
```ruby
  def load_author
    @author = Author.find(params[:id])
  end
```

Then add this line to the top of our controller
```ruby
  before_action :load_author, only: [:show, :destroy]
```
