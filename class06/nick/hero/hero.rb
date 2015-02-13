require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "/var/run/postgresql",
  :username => "nolds"     ,
  :password => "password1" ,
  :database => "heros"
)


# go...

class Hero < ActiveRecord::Base
	

	

end 



ActiveRecord::Base.logger = Logger.new(STDOUT)

binding.pry