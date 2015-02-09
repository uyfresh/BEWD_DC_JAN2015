#require 'pry'

def say_hello ()
	puts "hi"
end

def parrot (name, desire='cracker')
	puts "#{name} wants a #{desire}"
end 

def add(a, b)
	return a + b
end

#binding.pry