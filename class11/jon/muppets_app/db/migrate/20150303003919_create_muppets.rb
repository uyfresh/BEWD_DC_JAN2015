class CreateMuppets < ActiveRecord::Migration
  def change
    create_table :muppets do |t|
      t.string :name
      t.string :umage_url
    end
  end
end
