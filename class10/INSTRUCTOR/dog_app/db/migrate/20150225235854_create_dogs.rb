class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :image_url
    end
  end
end

# CREATE TABLE dogs (
#   id serial primary key
#   name varchar(255)
#   image_url varchar() 
# );