require 'active_record'
require 'pry'
#require_relative './hero'
ActiveRecord::Base.logger = Logger.new(STDOUT)


ActiveRecord::Base.establish_connection(
	:adapter 	=>	"postgresql",
	:host	 	=>  "/var/run/postgresql",
	:username 	=>  "scooper",
	:password	=>  "Y3nd1s##!!",
	:database	=>  "heros")
# go.

class Hero < ActiveRecord::Base
end
binding.pry

H
