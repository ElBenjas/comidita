class RemovePic3FromPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :pic1, :string
    remove_column :pictures, :pic2, :string
    remove_column :pictures, :pic3, :string
  end
end
