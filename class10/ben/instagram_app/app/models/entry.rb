class DateValidator < ActiveModel::Validator

	def validate(record)
		if record.date_taken == nil 
			record.errors[:date_taken] << 'cannot be nil'
		elsif record.date_taken < Time.new('2012-01-01')
			record.errors[:date_taken] << 'cannot be before 2012-01-01'
		end
		# binding.pry
	end

end

class Entry < ActiveRecord::Base

	validates :author, presence: true, length: {minimum: 2}
	validates :image_url, presence: true, length: {minimum: 5}
	validates :caption, presence: true
	validates_with DateValidator, fields: [:date_taken]

	# def add_error_messages
	# 	errors[:author] << "You have not entered a valid name"
	# end
	
	# binding.pry
end



