require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection('postgres://localhost/class05_homework')

class Dog < ActiveRecord::Base
	def is_puppy?
		return age < 2
	end

	def age_in_dog_years
		return age * 7
	end

	def age!
		self.age += 1 # self sets things in the class - required. 
		save
	end
end

binding.pry