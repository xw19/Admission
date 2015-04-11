class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.references :candidate, index: true, foreign_key: true
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.string :fathers_name
      t.string :mothers_name
      t.string :gender

      t.timestamps null: false
    end
  end
end
