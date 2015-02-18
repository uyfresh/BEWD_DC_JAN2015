require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/heros")
ActiveRecord::Base.logger = Logger.new(STDOUT)

# go...
# padawans   (table lowercase snake_case plural)
# Padawan    (class CamelCase singular)
# Ruby looks for a Singular Uppercase version of the database name (which is plural and snake_cased)


class Hero < ActiveRecord::Base # '<'' inheirit's
end



binding.pry