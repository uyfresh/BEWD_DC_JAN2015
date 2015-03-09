class ChangeLinksTable < ActiveRecord::Migration
  def change
  	change_column_default :links, :plus_count, 0
  	change_column_default :links, :minus_count, 0
  end
end
