class AddPhotoToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :photo, :json
  end
end
