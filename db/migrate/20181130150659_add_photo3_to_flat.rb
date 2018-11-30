class AddPhoto3ToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :photo3, :string
  end
end
