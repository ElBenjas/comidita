class AddItemsToPicture < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :pic, :string
    add_column :pictures, :caption, :string
  end
end
