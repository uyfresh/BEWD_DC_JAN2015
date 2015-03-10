class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :link_url
      t.string :user
      t.string :description
      t.integer :plus_count
      t.integer :minus_count
      t.timestamps
    end
  end
end
