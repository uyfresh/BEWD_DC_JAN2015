class Instaphotos < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :author
      t.text :image_url
      t.timestamps null: false
    end
  end
end
