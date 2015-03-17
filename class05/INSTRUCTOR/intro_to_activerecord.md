# Intro to ActiveRecord

**Objectives:**

- What is ActiveRecord?
- What is ORM?
- What are validations?

**Reading**

- [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
- [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html)

*Note: this lesson requires that you have the "jedi_academy" database set up!*

## What is ActiveRecord?

ActiveRecord is a stand-alone component of the Ruby on Rails framework. It is a *software adaptor* designed to talk to a database using a convenient Ruby-based syntax.

ActiveRecord is an example of an *Object Relational Mapper* (ORM), which is any piece of software that translates programming commands into SQL statements.

**Why we use ActiveRecord:**

- **Convenience**: it's just... simpler.
- **Abstraction**: AR will talk to virtually ANY database.
- **Performance**: AR optimizes SQL formatting so that it can be run faster. 

## Setup

To get up and running you'll need to do three things:

 1. Require the ActiveRecord gem in your Ruby file.
 2. Connect ActiveRecord to your database.

```
 # Require the ActiveRecord gem:
require 'active_record'

 # Connect ActiveRecord to your database:
ActiveRecord::Base.establish_connection("postgres://localhost/jedi_academy")
```

## Creating a Model

An ActiveRecord model links itself to a database table. We can easily work with the underlying database table simply by talking to the ActiveRecord model. To create a model, just extend ActiveRecord into a new class:

```
class Padawan < ActiveRecord::Base
end
```

That's it. Try it:

```
Padawan.all
```

### How does a model know its table?!

ActiveRecord places enormous emphasis on *convention*. Using naming conventions, models are aware of their underlying database tables:

```
Table: "padawans" (plural snake_case)
Model: "Padawan" (singular CamelCase)
```

Yes, ActiveRecord is smart enough to map irregular plural nouns, such as "Shelf" to "shelves".

## ActiveRecord Methods

### Class Methods

- `Model.all`: gets all table records.
- `Model.count`: counts the number of matching records.
- `Model.find(<id>)`: finds a record by ID (fast!).
- `Model.destroy(<id>)`: destroys a record by ID.
- `Model.where(:field => 'value')`: finds records by criteria.- 
- `Model.order(:field)`: orders records by field name.
- `Model.create(:field => 'value')`: creates a new record.
- `Model.update_all(:field => 'value')`: updates all matching records.
- `Model.new`: creates a new record, without saving it.

```
Padawan.where(:lightsaber => 'red').where('training_missions > 5').order(:name)
```

### Instance Methods

To get a model instance, query for a single record, or build a new record:

```
model = Model.find(23)
model = Model.new(:name => 'Timbaca')
```

Model instance methods:

- `model.save`
- `model.update(:field => 'value')`
- `model.destroy`