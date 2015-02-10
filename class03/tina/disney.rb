require 'pry'

characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan","Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]

 # puts characters.sample

 characters.index("Elsa")
 characters.index("Simba")


 characters.each do |i| 
 	print i
 	print "|" 
 end
 # this identifies the characters with the "M" names.

 characters.select do |name| 
 	 name.include? " "
 end	
# this seperates the spaces between the names



 #characters. = "Mickey Mouse| Aladdin|Snow White|Peter Pan|Simba|Mulan|Goofy|Goofy|"
 # characters.index { |Mickey|Aladdin|Snow|Peter|Simba|Mulan|Goofy|Tarzan|Donald|Shere|Mufasa|Belle|Jiminy| x == "character names on one line" }

binding.pry