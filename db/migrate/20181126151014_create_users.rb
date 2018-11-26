class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.integer :age
      t.string :nickname
      t.string :phone_number
      t.string :email
      t.string :nationality
      t.string :situation

      t.timestamps
    end
  end
end
