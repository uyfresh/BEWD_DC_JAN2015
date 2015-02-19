require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/class05_homework")

class Clubber < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 2 }
	validates :age, presence: true, numericality: { greater_than_or_equal_to: 21 }
	validates :gender, presence: true, length: { maximum: 1 }

	# def name
	# 	return name
	# end

	# def is_21_and_older?
	# 	return age >= 21
	# end

	# def gender
	# 	return gender.upcase
	# 		if gender.upcase == "M" || gender.upcase == "F"
	# 	end
	# end

end

binding.pry