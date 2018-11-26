class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :city
      t.string :address
      t.date :available_from
      t.integer :flat_surface
      t.integer :room_surface
      t.integer :number_of_rooms
      t.integer :number_of_roommates
      t.string :description
      t.string :photo
      t.integer :rent
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
