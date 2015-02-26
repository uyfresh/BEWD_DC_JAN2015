require 'active_record'

ActiveRecord::Base.logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	:adapter => "postgresl",
	:host => "localhost",
	:username => "WyethJackson",
	:password => "",
	:database => "moma_db"
	) 

class artists < ActiveRecord::Base
	has_many :paintings ,:dependent => :destroy
end