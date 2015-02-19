require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "kathleenkiely",
  :password => "",
  :database => "broadway_db"
)

class Musical < ActiveRecord::Base
has_many :songs, :dependent => :destroy
#tells program to destroy the songs associated with musicals that you delete; otherwise you have data pointing to non existent things
end

class Song < ActiveRecord::Base
belongs_to :musical
end


binding.pry