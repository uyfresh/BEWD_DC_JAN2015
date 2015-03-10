class Friend < ActiveRecord::Base
	validates :first_name, :last_name, :photo_url, :bio, presence: true

	def full_name
		[first_name, last_name].join(' ')
	end
end