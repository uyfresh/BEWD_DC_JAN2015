def say_hello()
	puts "hi"
end

def parrot (name, desire='cracker')
 puts "#{name} wants a #{desire}"
end

def add(a, b)
	parrot(a, b) 
	return a + b
end

parrot ('Uy', 'steak')
puts add(1, 2)
