require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "jonrojas",
	:password => "",
	:database => "moma_db"
	)

class Artist < ActiveRecord::Base
	has_many :paintings, dependent: :destroy
	validates :name, presence: true
	validates :nationality, presence: true
end

class Painting < ActiveRecord::Base
	belongs_to :artist
	validates :artist_id, presence: true
	# validates :artist_id, numercality: true 
end	

binding.pry