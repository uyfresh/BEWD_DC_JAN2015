# ask the user for their age
puts "how old are you yo?"
age = gets.chomp.to_i

#ask the user for their citizenship
puts "what country are you from?"
citizenship = gets.downcase.chomp

#tell them to vote if they can
if (age >= 18) && (citizenship == "us")
  puts "go out and vote"
elsif citizenship == "us"
  puts "grow faster!!!"
else
  puts "sorry!"
end