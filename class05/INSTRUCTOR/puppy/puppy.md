# Puppy Database

**Suggested Reading:**

- [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
- [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html)

## 1. Create a new database

* Create and connect to a "class05_homework" database.
* Create a "puppies" database table with the following attributes:
	* `id` (serial, primary key)
	* `name` (varchar 50, not null)
	* `age` (integer, not null)

## 2. Create an ActiveRecord model

* Import ActiveRecord and connect it to your database.
* Create a "Puppy" model.
* Use your model to create a puppy.
* Make Puppy validate the presence of "name".
* Make Puppy validate that age is under 2-years old.

For reference on setting up field validations, see [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html) guide.

## Bonus

Make Puppy validate that its name string ends with either "y" or "ie" (to assure that its name is sufficiently adorable). This is tricky... you'll need a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods).