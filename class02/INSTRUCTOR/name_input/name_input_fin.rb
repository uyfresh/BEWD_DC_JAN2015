names = []

name = ""

while name != "done"
  puts "#{names.length} so far. Enter a student name, or type 'done':"
  name = gets.chomp
  names.push(name) unless name == "done"
end

puts "You collected #{names.length} student names."
puts "The names are: #{names.join(', ')}"