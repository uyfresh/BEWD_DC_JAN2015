require 'pry'


def say_hello()
	puts "hi"
end


def parrot(name, desire)
	puts "#{name} wants a #{desire}"
end	

add(10, 5)
#definition define the method-you cannot define the method before it's
#been define

def add(a, b)
	parrot(a, b)
	return a + b
end	

parrot('Ui', 'steak')
sum = add(1, 2)

#	return "hi Adam"
	


binding pry
# in ruby a block can only see what's inside
# if you want to send data in pass it in as an argument. This is what y
# you call scope.