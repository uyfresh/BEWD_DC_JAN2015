require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/lpl778")

# go...

class Dog < ActiveRecord::Base


def age_in_dog_years (age)
	return age*7
end

def is_puppy?
	return age<2
end

def age!
	self.age += 1
	save
end


end

binding.pry