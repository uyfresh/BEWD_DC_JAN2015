class Character < ActiveRecord::Base
  validates :name, presence: true
  validates :image_url, presence: true
   validates :quotes, presence: true
end
