class CreateTrailersTwo < ActiveRecord::Migration
  def change
    drop_table :trailers
    create_table :trailers do |t|
    	t.string :title
      t.string :embed_url
      t.integer :movie_id
    end
  end
end
