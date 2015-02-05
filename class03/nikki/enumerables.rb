dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']
dwarves.each do |dwarf|
  puts "High ho! I am #{dwarf}!"
end

numbers = [1,2,3,4,5,6,7]
squares = []
numbers.each do |number|
  square = number ** 2
  squares.push(square)
end


less_than_four = []
numbers.each do |number|
  if number < 4
    less_than_4.push(number)
  end
end

# OR YOU COULD DO IT THIS WAY

squares = numbers.map do |number|
  number ** 2
end

less_than_4 = numbers.select do |number|
  number < 4 # must eval to true or false
end