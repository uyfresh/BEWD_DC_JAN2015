require 'active_record'
require 'pry'

# ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	:adapter 	=> "postgresql",
	:host 		=> "localhost",
	:username	=> "bencollins",
	:password	=> "",
	:database	=> "moma_db"
)

# Artist class
class Artist < ActiveRecord::Base
	# add validation to ensure artist has a name and nationality
	validates :name, presence: true
	validates :nationality, presence: true

	# one artist has many paintings
	has_many :paintings, :dependent => :destroy
end

# Painting class
class Painting < ActiveRecord::Base
	# add validation to ensure painting has a title
	validates :title, presence: true

	# painting belongs to one artist only
	belongs_to :artist
end

# binding.pry

# Remainder of program to run MOMA app in terminal

# method to display the menu in terminal
def display_menu
	puts "\n- - - - - - - - - - - - - - - - - - - - - -"
	puts "\nMOMA full menu:"
	puts "\n(I) Index - List all Artists"
	puts "(C) Add an Artist"
	puts "(R) View all info for a specific Artist, including their paintings"
	puts "(U) Update an Artist"
	puts "(D) Remove an Artist"
	puts "(X) End application"
	puts "\n- - - - - - - - - - - - - - - - - - - - - -"
	puts "\nPlease choose an option, by typing the corresponding letter"
end

def display_menu_short
	puts "\nMOMA short menu: (I) (C) (R) (U) (D) (X)"
	puts "Or to see full menu, type (M)"
end

# method to list out all artist's names in the moma database
def list_all_artists
	# first create array from Artist class with all artists in it
	all_artists = Artist.all
	all_artists.each { |artist| puts "  > " + artist.name}
end

# method to add artist to database
def add_artist(artist_name, artist_nationality)
	Artist.create(name: artist_name, nationality: artist_nationality)
end

# method to list paintings for particular artist
def list_paintings(artist)
	artist.paintings.each { |painting| puts "  > " + painting.title}
end

# method to update artist's name
def update_name(artist, update)
	artist.update(name: update)
end

# method to update artist's nationality
def update_nationality(artist, update)
	artist.update(nationality: update)
end

# method to remove artist
def remove_artist(artist)
	artist.destroy
end


# show first instance of menu for user
display_menu

# prompt user to make first choice
user_choice = gets.chomp.downcase

while user_choice != "x"	# keep looping until user chooses "x" to exit

	# index option
	if user_choice == "i"
		puts "\nHere is a list of all the artists in MOMA:\n"
		list_all_artists

	# add an artist option
	elsif user_choice == "c"
		puts "\nWhat is the name of the artist you would like to add?"
		name_to_add = gets.chomp.capitalize
		# puts name_to_add
		puts "\nWhat is the artist's nationality?"
		nationality_to_add = gets.chomp.capitalize
		add_artist(name_to_add,nationality_to_add)
		puts "\n" + name_to_add + ", " + nationality_to_add + ", has been added to MOMA database."

	# view all info for that artist
	elsif user_choice == "r"
		puts "\nPlease pick which artist you would like to review from our MOMA database:"
		list_all_artists
		
		puts "\nPlease type the name:"
		artist_to_review = Artist.find_by(name: gets.chomp)
		
		puts "\nArtist: " + artist_to_review.name
		puts "  > Nationality: " + artist_to_review.nationality
		puts "\nPaintings for this artist at MOMA:"
		list_paintings(artist_to_review)

	# update an artist
	elsif user_choice == "u"
		puts "\nPlease pick the artist you need to update:"
		artist_to_update = Artist.find_by(name: gets.chomp)
		puts "\nDo you want to update the name or nationality? (name/nationality)"
		field = gets.chomp.downcase
		
		if field == "name"
			puts "\nWhat do you want to update that field to?"
			update = gets.chomp
			update_name(artist_to_update,update)
		elsif field == "nationality"
			puts "\nWhat do you want to update that field to?"
			update = gets.chomp
			update_nationality(artist_to_update,update)
		else
			puts "\nSorry, I did not understand that answer"
			puts "Please pick again from the menu\n"
		end

	# remove an artist
	elsif user_choice == "d"
		puts "\nPlease pick which artist you would like to remove"
		artist_to_remove = Artist.find_by(name: gets.chomp)
		remove_artist(artist_to_remove)
		puts "\n" + artist_to_remove.name + " has been removed from the database!"

	# case when user does not pick from one of the options presented in menu
	else
		puts "\nSorry, I did not understand that option!"
	end

	# prompt user to go round again by displaying short menu and prompt for choice
	display_menu_short
	user_choice = gets.chomp.downcase
	
	# case for displaying full menu if user chooses
	if user_choice == "m"
		display_menu
		user_choice = gets.chomp.downcase
	end
end
