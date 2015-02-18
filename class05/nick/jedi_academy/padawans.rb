require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "/var/run/postgresql",
  :username => "nolds"     ,
  :password => "password1" ,
  :database => "jedi_academy"
)

# go...

class Padawan < ActiveRecord::Base

end 

binding.pry