# Nightclub Database

**Suggested Reading:**

- [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
- [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html)

## 1. Create a new database

* Create and connect to a "class05_homework" database.
* Create a "clubbers" database table with the following attributes:
	* `id` (serial, primary key)
	* `name` (varchar 50, not null)
	* `gender` (varchar 1, not null)
	* `age` (integer, not null)

## 2. Create an ActiveRecord model

* Import ActiveRecord and connect it to your database.
* Create a "Clubber" model.
* Use your model to create a clubber.
* Make Clubber validate that "name" is present, with a minimum length of 2 characters.
* Make Clubber validate that "age" is present, formatted as a number greater than or equal to 21.
* Make Clubber validate that "gender" is present, and set as either "M" or "F".

For reference on setting up field validations, see [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html) guide.

## Bonus

Make Clubber validate the ratio of males to femals: new males should be rejected unless there are twice as many females as males already in the database. This is tricky... you'll need a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods).