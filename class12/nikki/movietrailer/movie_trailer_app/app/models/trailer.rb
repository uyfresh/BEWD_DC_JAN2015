class Trailer < ActiveRecord::Base
  
  belongs_to :movie
  
  validates :title, presence: true, length: {minimum: 2}
  validates :embed_url, :presence => true, length: {minimum: 5}
end