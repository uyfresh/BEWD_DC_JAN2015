require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/jedi_academy")

# go...

class Padawan < ActiveRecord::Base

end

binding.pry