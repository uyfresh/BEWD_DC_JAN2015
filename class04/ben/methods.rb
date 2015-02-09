require 'pry'

# def say_hello ()
# 	puts "Hello"
# end

def parrot(name, desire='cracker')
	puts "#{name} wants a #{desire}"
end

# def add(a,b)
# 	puts a + b
# 	return a + b
# 	a = 34 #this line is never hit because return exits method, called returning early
# end

add(1,9)

def add(a,b)
	parrot(a,b)
	return a + b
end

# parrot('Ui','steak')
# sum = add(1,9)
# puts sum



# binding.pry