# Rails Models

## Create a new Rails app
In your terminal run this command to create your Rails app:
- `rails new dog_db -d postgresql`
- `cd dog_db` to get to your Rails app
- Update the `Gemfile` with `gem 'pry-rails'`
- Run `bundle install` from the terminal to install your gems

## Database Setup
- From the terminal run `rake db:create`
- You can check in psql that it created your database if you like
- `rails dbconsole` allows you to access your psql console

## Running your App
- From the terminal run `rails server` to start your Rails app (ctrl+c to quit)
- In your browser, navigate to `localhost:300`

---

## Database Migrations
- Background reading: http://guides.rubyonrails.org/migrations.html (Section 1, 2.1)

Run this command to generate a migration:
- `rails generate migration CreateDogs`

This creates a timestamped migration file in the `db/migrate` folder. You can fill it in like this:

```ruby
class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :image_url
    end
  end
end

```

- To run your migrations, use `rake db:migrate`
- DON'T EDIT YOUR MIGRATIONS AFTER THEY HAVE BEEN RUN
- To check out the current state of our database schema, you can check out the `db/schema.rb` file

## Model

We've set up the database table so far, but we don't have our model yet!

- To set up your model, create a file called `dog.rb` in the `app/models/` directory
- It should looks something like this:

```
class Dog < ActiveRecord::Base
end
```

- Use `rails console` to access a version of pry that has access to our Rails app. We should be able to use all of the ActiveRecord commands we learned previously here.
- In the rails console, try typing `Dog.all`
- To get out of the rails console, just type `exit`

## Seeds

- If you want to set up a seed file, you can do so in `db/seeds.rb`
- Write ruby in there like the commented example or like we did previously in class.
- When you want to run your seed file, just type `rake db:seed`
- Double check that it seeded your database correctly by checking in your `rails console`


## Other Database Migrations

- We can use migrations to manage changes to our database schema (like adding or removing columns from database tables)

`rails generate migration AddAgeToDogs`

```
class AddAgeToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :age, :integer
  end
end

```

- To execute pending migrations, use `rake db:migrate`
- If you want to undo the last migration, use `rake db:rollback`

## Bonus

- Look up what data types besides string, text and integer are available in database migrations
- Look up how to add database constraints (like not null) to your migration files
- Look up how to create migrations that:
  - rename a column
  - remove a column
  - drop a table