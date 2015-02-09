require 'pry'

class FortuneCookie 

def initialize
	@wrapped = true 
	@cracked = false
	@fortune = ["The 00 is strong with you", "Good luck is in your future", "You're great, man" ]
end 

# Define a `wrapped?` method on the class. It should return the cookie's wrapped status.
def wrapped?
	return @wrapped
end 

# Define a `cracked?` method on the class. It should return the cookie's cracked status.
def cracked?
	return @cracked 
end 

# Define an `unwrap` method on the class. It should set the cookie as not wrapped.
def unwrap 
	@wrapped = false 
end 

#  Define a `crack` method on the class. This method should do the following:
#   * **If the cookie is still wrapped**, return "You need to unwrap it first".
#   * **If the cookie is unwrapped**, then set the cookie as cracked.

def crack
	if @wrapped
		return "You need to unwrap it first"
	else
		@cracked = true
	end 
end 

# * Define a `read` method on the class. This method should do the following:
#   * **If the cookie is still wrapped**, return "You need to unwrap it, then crack it".
#   * **If the cookie has not been cracked**, return "You still need to crack it".
#   * **If the cookie has been wrapped AND cracked**, return "The OO is strong with you".
def read 
	if @wrapped 
		return "You need to unwrap it, then crack it"
	elsif @cracked == false 
		return "You still need to crack it"
	else return @fortune.sample
	end 
end 



end 

f = FortuneCookie.new
binding.pry



# ## Bonus!

# Initialize your cookies with another instance variable that holds an array of your own fortunes. When the user claims their fortune, give them a random fortune from this array.