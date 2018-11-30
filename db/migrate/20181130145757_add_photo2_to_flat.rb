class AddPhoto2ToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :photo2, :string
  end
end
