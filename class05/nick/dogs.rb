require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "/var/run/postgresql",
  :username => "nolds"     ,
  :password => "password1" ,
  :database => "class0_homework"
)

# go...

class Dog < ActiveRecord::Base
	validates :name, presence: true
	validates :age, presence: true, numericality: true
	validate :name_is_cute

	def age_in_dog_years
		return age * 7
	end


	def is_puppy?
		return age < 2
		 
	end

	def age!
		self.age +=1
		save
	end

	def name_is_cute
		if is_puppy? && name && name[-1] != 'y' && name[-2..-1] != 'ie'
			errors.add(:name_is_cute, "name is not cute enough! rename.")
		end
		
	end

end 

binding.pry