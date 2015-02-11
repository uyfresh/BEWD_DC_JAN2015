# Class 05 Dog Years Homework
#
# Ben Collins
#
# Active Record example with validation


require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection('postgres://localhost/class05_homework')

class Dog < ActiveRecord::Base

	# validates the name field is not nil
	validates :name, presence: true

	# validates the age field is an integer
	validates :age, numericality: {only_integer: true}
	
	# validates that puppy has name ending "y" or "ie"
	# Problem 1: dogs older than 2 and/or without puppy name, validate as false
	# and hence can't be saved to the database
	# Problem 2: when using method "age!", cannot save to database as this 
	# tries to save dogs with age greater than 2, validates false, fails to save
	validate :has_puppy_name?

	def has_puppy_name?
		if is_puppy?
			if name[-1,1] != "y" && name[-2,2] != "ie"
		 		errors.add(:name, "Not a puppy name")
		 	else
		 		puts "Puppy named #{name}"
		 	end
		else
			errors.add(:age, "Too old")
		end
	end

	def age_in_dog_years
		return age * 7
	end

	def is_puppy?
		if age < 2
			return true
		end
	end

	def age!
		self.age += 1
		save
	end


end


binding.pry