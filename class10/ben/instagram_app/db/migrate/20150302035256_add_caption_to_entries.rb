class AddCaptionToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :caption, :string, default: "No caption given"
  end
end
