require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "/var/run/postgresql",
  :username => "nolds"     ,
  :password => "password1" ,
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
	has_many :paintings, dependent: :destroy
	validates :name, presence: true
	validates :nationality, presence: true
end

class Painting < ActiveRecord::Base
	belongs_to :artist
	validates :title, presence: true
	validates :artist_id, presence: true, numericality: true
end


binding.pry