class RenameImageColumn < ActiveRecord::Migration
  def change
  	change_table :muppets do |t|
  		 t.rename :umage_url, :image_url
  	end
  end
end
