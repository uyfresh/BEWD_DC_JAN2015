require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection('postgres://localhost/heros')

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Hero < ActiveRecord::Base
end

binding.pry