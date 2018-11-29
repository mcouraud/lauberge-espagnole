class AddFullAddressToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :zip_code, :string
    add_column :flats, :full_address, :string
  end
end
