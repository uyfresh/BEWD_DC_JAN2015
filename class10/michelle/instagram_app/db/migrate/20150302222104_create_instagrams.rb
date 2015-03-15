class CreateInstagrams < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
    	t.string :author
    	t.text :photo_url
    	t.text :date_taken
    end
  end
end
