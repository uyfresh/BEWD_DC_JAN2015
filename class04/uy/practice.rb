require 'pry'

class Student
	def initialize (name, age=100)
		@name = name
		@age = age
	end
end

bob = Student.new("Bob")
puts bob.me
# nil

binding.pry