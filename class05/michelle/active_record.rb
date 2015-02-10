require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/jedi_academy")

# go...

#padawans (tablename)
#Padawan (class name)

#To make the two connect, the table name is always snake_case plural. 
#The class name is CamelCase singular.)

class Padawan < ActiveRecord::Base
	#Everything that ActiveRecord has/can do now will be available to Padawan

end

binding.pry