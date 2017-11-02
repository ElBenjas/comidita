class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :pic1
      t.string :pic2
      t.string :pic3

      t.timestamps
    end
  end
end
