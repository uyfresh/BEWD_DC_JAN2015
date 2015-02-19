puts "Hi and welcome to MOMA's portable tour guide!"
puts "Use this app to check out and even edit our collection."
puts "Here's how:"
#it occurs to me that another way to do this would be to define each of the below mentioned options as a variable at the top of the program.. might be a way to avoid a series of conditionals?
puts "Enter:"
puts "I for an index of our artists"
puts "C to add an artist"
puts "R to view our information and holdings for an artist"
puts "U to update an artist listing"
puts "D to remove an artist"

input = gets.chomp
if input == 'I'
	puts Artist.all(:name)
elsif input == 'C'
 	puts 'Enter the name of the artist you want to add here:'
 	a == gets.chomp
 	puts 'If you know the artist\'s nationality, enter it here:'
 	n == gets.chomp
 	artist = Artist.create(:name => a, :nationality => n)
 end
		