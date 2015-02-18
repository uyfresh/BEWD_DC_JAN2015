require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection('postgres://locahost/class_05_homework')

class Dog < ActiveRecord::Base
end

def age_in_dog_years
	return age * 7	
end

def is_puppy?
	true = age < 2
end

def age!
	
end



binding.pry