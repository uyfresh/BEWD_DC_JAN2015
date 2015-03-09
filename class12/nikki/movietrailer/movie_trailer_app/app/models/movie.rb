class Movie < ActiveRecord::Base

  has_many :trailers, dependent: :destroy

  validates :title, presence: true, length: {minimum: 2}
end
