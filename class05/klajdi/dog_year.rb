require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/class05_homework")

class Dog < ActiveRecord::Base
	validates :name, presence: true
	validates :age, numericality: { only_integer: true }, presence: true
	validate :name_is_not_cute_enough
	

	def is_puppy?
		return age < 2
	end

	def age_in_dog_years
		return age * 7
	end

	def age_one_year
		self.age += 1
		save	
	end

	def name_is_not_cute_enough
		if is_puppy? && name && name[-1] != "y" && name [-2..-1] != "ie"
			errors.add(:name_is_not_cute_enough, "this puppy needs a cuter name :(")
		end
	end

end

binding.pry
