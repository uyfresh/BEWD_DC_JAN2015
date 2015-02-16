require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "uyfresh",
	:password => "",
	:database => "moma_db"
)

class Artist < ActiveRecord::Base
	has_many :paintings,
end

ex

binding.pry