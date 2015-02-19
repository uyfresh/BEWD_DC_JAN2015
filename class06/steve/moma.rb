require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Muffinz",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
	has_many :paintings, :dependent => :destroy

	validates :name, :nationality, presence: true
end

class Painting < ActiveRecord::Base
	belongs_to :artist

	validates :title, :artist, presence: true
end

binding.pry