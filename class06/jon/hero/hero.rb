require 'active_record'
require 'pry'


ActiveRecord::Base.establish_connection("postgres://localhost/heros")

class Hero < ActiveRecord::Base
end

ActiveRecord::Base.logger = Logger.new(STDOUT)



binding.pry
