class Movie < ActiveRecord::Base
	has_many :books, dependent: :destroy
end