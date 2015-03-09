class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :picture
      t.text :synopsis
      t.author :references

      t.timestamps null: false
    end
  end
end
