require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection("postgres://localhost/heros")

class Hero < ActiveRecord::Base

	
end

binding.pry