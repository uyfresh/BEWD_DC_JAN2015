class Link < ActiveRecord::Base

	validates :author, presence: true, length: {minimum: 2}
	validates :link_url, presence: true, length: {minimum: 5}
	validates :description, presence: true, length: {minimum: 5}

end