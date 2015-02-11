require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/lpl778")

# go...

class Cat < ActiveRecord::Base

def age? (cat_name)
	:name == cat_name
	return :age
end

def name?
	return name
end

def age!
	self.age += 1
	save
end


end

binding.pry