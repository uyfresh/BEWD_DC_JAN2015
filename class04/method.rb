#This is a method
require 'pry'

def say_hello()

	puts "Hi"

end

#Passing in arguments
def parrot(name, desire = 'cracker')

	puts "#{name} wants a #{desire}"

end

#This is a Return
def add(a, b, c)
	return a + b
end

superc = 10

add(1, 3, superc)



binding.pry