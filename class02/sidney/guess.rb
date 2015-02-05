puts "Hi"
guess = rand(11)
puts guess
puts " think of a number between 1 and 10."
ans = gets.chomp.to_i
if
while !(ans == guess)
	if ans < guess
		puts "Too low.  try again"
	else 
		puts "Too high.  try again"
	end
	ans = gets.chomp.to_i

	end
else  puts "great job.  the answer is correct."
end