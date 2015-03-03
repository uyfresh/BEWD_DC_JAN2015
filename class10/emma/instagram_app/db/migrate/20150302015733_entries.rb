class Entries < ActiveRecord::Migration
   def change
   	drop_table :entries
    create_table :entries do |t|
    	t.string :author
    	t.text :photo_url
    	t.timestamp :date_taken
  	end
  end
end

