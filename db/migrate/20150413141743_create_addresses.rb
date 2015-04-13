class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :personal, index: true, foreign_key: true
      t.string :line1
      t.string :line2
      t.string :city_village
      t.string :district
      t.string :state
      t.string :country
      t.integer :pin
      t.string :phone
      t.string :mobile

      t.timestamps null: false
    end
  end
end
