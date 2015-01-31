puts "How old are you?"
age = gets.chomp.to_i

puts "Are you a US citizen?"
citizen = gets.downcase.chomp


if age >= 18 && citizen == "yes"
	puts "Go vote!"
elsif (age < 18) && citizen == "yes"
	puts "Grow faster!"
else
	puts "Go vote in your country of citizenship!"
end