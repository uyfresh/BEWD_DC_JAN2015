require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "philipengles",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
end

class Painting < ActiveRecord::Base
end

binding.pry