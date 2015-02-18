require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "jyoung",
	:password => "",
	:database => "heros")

ActiveRecord::Base.logger = Logger.new(STDOUT)




class Hero < ActiveRecord::Base 
 
end 



binding.pry 