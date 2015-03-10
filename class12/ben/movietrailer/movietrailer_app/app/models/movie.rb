class Movie < ActiveRecord::Base
	has_many :trailers, dependent: :destroy

	validates :title, presence: true, length: {minimum: 2}
	validates :year, :presence => true, numericality: {only_integer: true}
	validates :poster_url, :presence => true, length: {minimum: 5}

	# When you're doing an action on the instance that's calling the method, you use self
	# http://stackoverflow.com/questions/10805136/when-to-use-self-in-model
	def self.search(search)
		if search
			where("title LIKE ?", "%#{search}%")
		else
			all
		end
	end

end