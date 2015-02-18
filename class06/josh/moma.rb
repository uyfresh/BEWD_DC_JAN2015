require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jyoung",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
	has_many :paintings, :dependent => :destroy
	validates :name, uniqueness: { case_sensitive: false }
end 

class Painting < ActiveRecord::Base
	belongs_to :artist
	validates :name, uniqueness: { case_sensitive: false }
end 

binding.pry 