class AddCaptionToInstagrams < ActiveRecord::Migration
  def change
    add_column :instagrams, :caption, :text
  end
end
