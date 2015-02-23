class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.references :author, index: true
    end
  end
end
