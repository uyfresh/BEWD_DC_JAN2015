# Dog Years

**Suggested Reading:**

- [Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
- [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html)

## 1. Create a new database

* Create and connect to a "class05_homework" database.
* Create a "dogs" database table with the following attributes:
	* `id` (serial, primary key)
	* `name` (varchar 50, not null)
	* `age` (integer, not null)

## 2. Create an ActiveRecord model

* Import ActiveRecord and connect it to your database.
* Create a "Dog" model.
* Define an `age_in_dog_years` method, that returns the dog's age x7.
* Define an `is_puppy?` method, that returns true if the dog's age is less than two.
* Define an `age!` method, that ages the dog by a year.
* Make Dog validate that "name" is present.
* Make Dog validate that "age" is present, and a number.
* Use your model to create a dog, and age it. Make sure your changes are being saved to the database!

For reference on setting up field validations, see [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html) guide.

## Bonus

If Dog is a puppy, then validate that its name string ends with either "y" or "ie" (to assure that its name is sufficiently adorable for its youth). This is tricky... you'll need a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods).