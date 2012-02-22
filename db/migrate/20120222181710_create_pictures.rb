class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.has_attached_file :file

      t.timestamps
    end
  end
end
