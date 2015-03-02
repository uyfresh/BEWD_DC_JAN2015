require 'active_record'

require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/class05_homework")


class Dog < ActiveRecord::Base 
	def initialize
		@age = age
		@name = name

	end
	def age_in_dog_years
		dog_years = age * 7
		return "This dog in dog years is #{dog_years}"

	end

	def is_puppy?
		if age<2
			return true
		else
			return false	
		end
	end

	def age
		age = age + 1
		return "this dog is now #{age} years old"
	end

end

puppy = Dog.new






binding.pry