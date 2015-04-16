class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :name
      t.text :description
      t.string :certificate
      t.integer :year
      t.string :issuing_authority
      t.string :points
      t.references :candidate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
