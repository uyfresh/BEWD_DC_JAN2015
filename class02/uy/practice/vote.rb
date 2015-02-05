puts "how old are you?"
age = gets.chomp.to_i

puts "what country are you from?"
citizenship = gets.downcase.chomp

if (age >= 18) && (citizenship == "us")
	puts "go out and vote"
elsif citizenship == "us"
	puts "grow faster!!!"
else
	puts "sorry!"
end