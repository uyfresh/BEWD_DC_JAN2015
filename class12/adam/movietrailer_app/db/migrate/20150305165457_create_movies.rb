class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie_title
      t.string :year
      t.text :poster_url
    end
  end
end
