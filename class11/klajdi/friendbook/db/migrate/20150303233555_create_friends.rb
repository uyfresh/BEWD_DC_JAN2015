class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :hobbies
      t.text :bio
    end
  end
end
