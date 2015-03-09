class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :image_url
      t.text :synopsis
      t.references :author
    end
  end
end
