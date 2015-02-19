require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "richardmetzger",
  :password => "",
  :database => "broadway_db"
)

class Musical < ActiveRecord::Base
	has_many :songs, dependant: :destroy #must be plural. 'dependant: :destroy' if a Musical is deleted also destroy songs related to it. eg. destroying "Seven Brides for Seven Brothers" also destroys 'Bless your beautiful hide'.
end

class Song < ActiveRecord::Base
	belongs_to :musical #must be singular
end

binding.pry