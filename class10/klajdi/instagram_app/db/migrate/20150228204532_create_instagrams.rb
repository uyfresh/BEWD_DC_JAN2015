class CreateInstagrams < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
    	t.string :author
    	t.text :photo_url
    	t.timestamps null: false
    end
  end
end
