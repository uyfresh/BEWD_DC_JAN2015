class Entry < ActiveRecord::Migration
  def change
  		drop_table :entries
    	create_table :entry do |t|
    		t.string :author
    		t.text :photo_url
    		t.timestamp :date_taken
  	end
  end
end
