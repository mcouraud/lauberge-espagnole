class ChangePhotoTypeToFlats < ActiveRecord::Migration[5.2]
  def change
    change_column :flats, :photo, :string
  end
end
