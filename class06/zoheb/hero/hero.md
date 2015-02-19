# Hero Database

### Prompt

Create a program to interact with a database of superheros. You will have to set up your database and create a Ruby Program to interact with it.

Start by opening up the psql console and creating your superhero database:

`CREATE DATABASE heros;`

### Hero Spec

A Hero has the following attributes:

* name
* alter_ego
* has_cape?
* power
* arch_nemesis

### Seeds

Kick start your database with these records:

```
Hero.create([
  {:name => "Superman", :alter_ego => "Clark Kent",:has_cape => true, :power => "strength", :arch_nemesis => "Lex Luthor"},
  {:name => "Wonder Woman", :alter_ego => "Diana Prince",:has_cape => false, :power => "strength", :arch_nemesis => "Cheetah"},
  {:name => "Batman", :alter_ego => "Bruce Wayne",:has_cape => true, :power => "intelligence", :arch_nemesis => "Joker"},
  {:name => "Mr Incredible", :alter_ego => "Robert Parr",:has_cape => false, :power => "strength", :arch_nemesis => "Syndrome"},
  {:name => "Professor X", :alter_ego => "Charles Xavier",:has_cape => false, :power => "psychic", :arch_nemesis => "Magneto"},
  {:name => "Spiderman", :alter_ego => "Peter Parker",:has_cape => false, :power => "wall cl\qimbing", :arch_nemesis => "Doctor Octopus"},
  {:name => "Captain America", :alter_ego => "Steve Rogers",:has_cape => false, :power => "super soldier", :arch_nemesis => "Red Skull"},
  {:name => "Iron Man", :alter_ego => "Tony Stark",:has_cape => false, :power => "suit", :arch_nemesis => "Mandarin"}
])
```

### CRUDing your Heros

To print out the SQL commands that ActiveRecord writes for you, add this line to your Ruby file:

`ActiveRecord::Base.logger = Logger.new(STDOUT)`

Explore and familiarize yourself with all of these ActiveRecord methods (you should look at the SQL each one generates too!). Which ones are class methods and which ones are instance methods?

  - new
  - save
  - create
  - all
  - find and find_by (What's the difference?)
  - where
  - update
  - destroy
  - delete_all

We will be using these methods a lot in Rails.

### Tasks

1. Create a new Hero and save him/her to your database
2. Return all Heros
3. Return the hero with an id of 2
4. Return the hero with an alter ego of "Bruce Wayne"
5. Return the hero with a name of "Captain America"
6. Return all the artists who have capes
7. Return all the artists who have "strength" as their power
8. Give Mr. Incredible a cape
9. Remove Professor X

### Bonus

If you finish early, check out what other techinques are available to us with ActiveRecord: http://guides.rubyonrails.org/active_record_querying.html