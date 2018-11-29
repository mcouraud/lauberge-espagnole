class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.date :date
      t.time :time
      t.boolean :skype, default: false
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
