class CreateCastewiseMarks < ActiveRecord::Migration
  def change
    create_table :castewise_marks do |t|
      t.references :caste_marks, polymorphic: true, index: true
      t.integer :gen
      t.integer :sc
      t.integer :st
      t.integer :obca
      t.integer :obcb

      t.timestamps null: false
    end
  end
end
