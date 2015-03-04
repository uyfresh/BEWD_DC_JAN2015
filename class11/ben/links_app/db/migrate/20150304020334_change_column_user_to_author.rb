class ChangeColumnUserToAuthor < ActiveRecord::Migration
  def change
  	rename_column :links, :user, :author
  end
end
