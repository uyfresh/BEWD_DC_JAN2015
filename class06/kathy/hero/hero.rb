require 'active_record'
require 'pry'


ActiveRecord::Base.establish_connection("postgres://localhost/heros")

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Hero < ActiveRecord::Base
end

hero = Hero.new
user.name = 'Spiderwoman'
alter_ego = 'Marian the Librarian'
has_cape = 't'
power = 'rappelling'
arch_nemesis = 'Doctorina Octopussy'

Hero.create({:name =>"Cyclops", :alter_ego => "Scott Summers", :power => "laser eyes",)

binding.pry