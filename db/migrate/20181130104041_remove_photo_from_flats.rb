class RemovePhotoFromFlats < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :photo, :string
  end
end
