class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.text :embed_url
      t.references :movie, index: true
    end
    add_foreign_key :trailers, :movies
  end
end
