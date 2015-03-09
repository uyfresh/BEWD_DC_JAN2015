class Movie < ActiveRecord::Base
	has_many :trailers, dependent: :destroy
end
