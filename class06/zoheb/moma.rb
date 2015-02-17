require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection('postgres://localhost/moma_db')

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Artist < ActiveRecord::Base
	has_many :paintings, dependent: :destroy
end

class Painting < ActiveRecord::Base
	belongs_to :artist
end

# $ruby seeds.rb