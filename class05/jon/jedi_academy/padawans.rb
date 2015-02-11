require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/jedi_academy")

class Padawan < ActiveRecord::Base 
end

Padawan.all

binding.pry