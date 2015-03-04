class AddDateTakenToInstagrams < ActiveRecord::Migration
  def change
    add_column :instagrams, :date_taken, :string
  end
end
