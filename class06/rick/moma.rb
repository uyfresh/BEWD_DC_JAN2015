require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection('postgres://localhost/moma_db')

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Style < ActiveRecord::Base
	has_many :artists, dependent: :destroy
end

class Artist < ActiveRecord::Base
	has_many :paintings, dependent: :destroy
	belongs_to :style
end

class Painting < ActiveRecord::Base
	belongs_to :artist
end