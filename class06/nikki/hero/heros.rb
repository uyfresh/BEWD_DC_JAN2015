require 'active_record'
require 'pry'

# this prints out the sql so we can see what it is doing
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection('postgres://znikki:password@localhost/heros')
# alternative(
# :adapter => "postgresql"
# :host => "localhost"
# :username => "znikki"
# :password => "password"
# :database => "heros"
# )
class Hero < ActiveRecord::Base

  
end



binding.pry
