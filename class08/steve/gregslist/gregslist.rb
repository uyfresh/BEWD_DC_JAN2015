require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "Muffinz",
  :password => "",
  :database => "gregslist_db"
)

class User < ActiveRecord::Base
	has_many :postings, :dependent => :destroy
end

class Posting < ActiveRecord::Base
	belongs_to :user
end

binding.pry