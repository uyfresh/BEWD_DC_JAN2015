require 'pry'

def say_hello()
	puts "hi"
end 




def parrot(name, desire='cracker')
	puts "#{name} wants a #{desire}"
end 



def add(a, b)
	parrot(a, b)
	return a + b
end 

parrot("I", "steak")
sum = add(3,4)



binding.pry 