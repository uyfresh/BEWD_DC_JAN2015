require 'active_record'
require 'pry'


ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "klajdibejko",
	:password => "",
	:database => "moma_db"
)

class Artist < ActiveRecord::Base
	has_many :paintings, :dependent => :destroy
	validates :name, :nationality, presence: true
end


class Painting < ActiveRecord::Base
	belongs_to :artist
	validates :title, presence: true
end

questions = ["Press i to see all the artists",
			 "Press c to add an artist",
			 "Press r to see an artist's info and work",
			 "Press u to update an artist",
			 "Press d to remove an artist"
			]

puts questions
input = gets.chomp.downcase

while input 
	if input == "i"
		artists = Artist.all
		artist_names = artists.each do |artist|
			puts artist.name
		end
		input == ""
	
	
	elsif input == "c"
		while input == "c"
			puts "What is the artist's full name?"
			name = gets.chomp.capitalize
			puts "What is the artist's nationality?"
			nationality = gets.chomp.capitalize
			Artist.create(name: "#{name}", nationality: "#{nationality}")
			puts "Press c to add another artist or any other key to go back"
			input = gets.chomp.capitalize
		end
		

	elsif input == "r"
		while input == "r"
			puts "Which artist would you like to search for?"
			artist = gets.chomp.capitalize
			return_artist = Artist.find_by(name: "#{artist}")
				puts return_artist.paintings
			puts "Press r to search for another artist on any other key to go back"
			input = gets.chomp.capitalize
		end
	
	elsif input == "u"
		while input == "u"
			puts "Which artist would you like to update?"
			artist = gets.chomp.capitalize
			update_artist = Artist.find_by(name: "#{artist}")
			puts "Would you like to update their name, nationality, or paintings?"
			attribute = gets.chomp.capitalize
			
				if attribute == "name"
					puts "What is the artist's new name?"
					new_name = gets.chomp.capitalize
					update_artist.update(name: "#{new_name}")
				elsif attribute == "nationality"
					puts "What is the artist's new nationality?"
					new_nationality = gets.chomp.capitalize
					update_artist.update(nationality: "#{new_nationality}")
				else 
					puts "Which painting would you like to update?"
					new_painting = gets.chomp.capitalize
					update_artist.update(painting: "#{new_painting}")
				end	
			input == ""			
		end

	elsif input == "d"
		puts "Which artist would you like to delete"
		artist = gets.chomp.capitalize
		artist_delete = Artist.find_by(name: "#{artist}")
		artist_delete.destroy

	else	
	
	puts "Would you like to do anything else. y/n?"
	input = gets.chomp.downcase
		if input == "y"
			puts questions
		else
			puts "Goodbye!"
		end
	end
end




#binding.pry