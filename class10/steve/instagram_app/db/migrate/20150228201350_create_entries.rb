class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.string :author
    	t.text :image_url
    	t.string :date_taken
    end
  end
end
