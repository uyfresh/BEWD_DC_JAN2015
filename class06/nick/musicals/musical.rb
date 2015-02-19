require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "/var/run/postgresql",
  :username => "nolds"     ,
  :password => "password1" ,
  :database => "broadway_db"
)

class Musical < ActiveRecord::Base
	has_many :songs, dependent: :destroy
end

class Song < ActiveRecord::Base
	belongs_to :musical
end


binding.pry