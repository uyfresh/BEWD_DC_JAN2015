require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jyoung",
  :password => "",
  :database => "broadway_db"
)

class Musical < ActiveRecord::Base
	has_many :songs,  :dependent => :destroy #this means to delete any song instance data that relies on Musical 

end

class Song < ActiveRecord::Base
	belongs_to :musical 
end 


binding.pry