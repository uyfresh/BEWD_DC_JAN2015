
class Entry < ActiveRecord::Base
	validates :author, presence: true
	# validates :photo_url, prescence: true
	validate :validate_date_taken_before_cut_off

	def validate_date_taken_before_cut_off
		cut_off = '1/1/2012'
		if date_taken && cut_off
			errors.add(:date_taken, "Date must be before 1/1/2012") if date_taken < cut_off
		end 
	end
end