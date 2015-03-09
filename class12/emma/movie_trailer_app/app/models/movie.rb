class Movie < ActiveRecord::Base
	has_many :trailers, depend: :destroy
end 