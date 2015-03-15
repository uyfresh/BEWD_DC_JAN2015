require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "MichelleW",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
	has_many :paintings, :dependent => :destroy
	#says if you're destroying artist, destroy associated files
end

class Painting < ActiveRecord::Base
	belongs_to :artist
end


binding.pry