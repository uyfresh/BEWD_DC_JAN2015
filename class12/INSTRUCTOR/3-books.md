Setup your Books table
```bash
rails g migration CreateBooks
```

Your migration file should looks like this:
```ruby
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.references :author
    end
  end
end
```

Run your migration
```
rake db:migrate
```

Setup your Book Model
```ruby
class Book < ActiveRecord::Base
  belongs_to :author
end
```

Update your Author Model
```ruby
class Author < ActiveRecord::Base
  has_many :books, dependent: :destroy
end
```

Update your routes to include the new nested resources
```ruby
root "authors#index"
resources :authors, except: [:edit, :update] do
  resources :books, except: :index
end
  
```

Write your Books Controller. We can DRY up our controller using one or more before actions
```ruby
class BooksController < ApplicationController
  before_action :load_author
  before_action :load_book, except: [:new, :create]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.author = @author
    if @book.save
      redirect_to author_book_path(@author, @book)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to author_book_path(@author, @book)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to @author
  end

  private

  def load_author
    @author = Author.find(params[:author_id])
  end

  def load_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :synopsis, :year)
  end
end
```

Create the show page
```erb
<p>
  <%= link_to "Authors", authors_path %> / 
  <%= link_to @author.last_name, @author %> / 
  <%= @book.title %>
</p>

<h1><%= @book.title %></h1>
<p>By <%= link_to @author.last_name, @author %></p>

<p><%= @book.synopsis %></p>

<%= link_to "Edit", edit_author_book_path(@author, @book) %>
```

Create the new page
```erb
<h1>Add an author</h1>

<%= render 'form' %>
```

Create the edit page
```erb
<h1>Edit <%= @book.title %></h1>

<%= render 'form' %>
```

Create the form partial
```erb
<%= form_for [@author, @book] do |f| %>
  <p>
    <%= f.label :title %>
    <%= f.text_field :title %>
  </p>
  <p>
    <%= f.label :synopsis %>
    <%= f.text_area :synopsis %>
  </p>
  <%= f.submit %> <%= link_to "Cancel", @author %>
<% end %>
```

Update your AuthorsController show action to include this:
```ruby
  def show
    @books = @author.books.order(:title)
  end
```

Update your Author show page to include this
```erb
<ul>
<% @books.each do |book| %>
  <li><%= link_to book.title, author_book_path(@author, book) %></li>
<% end %>
</ul>

<p><%= link_to "Add a book", new_author_book_path(@author) %></p>
```

