require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "MichelleW",
  :password => "",
  :database => "broadway_db"
)

class Musical < ActiveRecord::Base
	has_many :songs, :dependent => :destroy
	#says if you're destroying musical, destroy associated files
end

class Song < ActiveRecord::Base
	belongs_to :musical
end


binding.pry