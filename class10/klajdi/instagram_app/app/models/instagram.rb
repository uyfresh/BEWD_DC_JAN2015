class Instagram < ActiveRecord::Base

	validates :author, :photo_url, :date_taken, :caption, presence: true
	
	# trying different validations for date_taken. none of them work :(
	
	# @date = "2012/01/01".to_time
	# @date_integer = @date.to_i

	# def date_taken
	# 	if date_taken.to_i < @date_integer
	# 		errors.add(:date_taken, "can't be before 01/01/2012")
	# 	end
	# end

	# date = "01/01/2012".to_time
	# date_integer = date.to_i 
	# validates :date_taken, numericality: { greater_than: date_integer}, presence: true

end

# class DateValidator < ActiveModel::Validator 
# 	def validate(date_taken)
# 		if date_taken < "2012/01/01".to_time.to_i
# 			date_taken.errors[:name] << "Add a picture taken after 1/1/2012 please!"
# 		end
# 	end
# end

# class Date
# 	include ActiveModel::Validations
# 	validates_with DateValidator
# end