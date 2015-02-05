puts "What is your age?"
age = gets.chomp.to_i
puts "What is your citzenship?"
citizenship = gets.chomp.to_s
if citizenship == "American" && age > 17
  puts "Go vote!"
elsif age < 18 && "American"
  puts "grow faster"
else
  puts "better luck next time"
end
