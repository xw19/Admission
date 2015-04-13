class CreateCastewiseMarks < ActiveRecord::Migration
  def change
    create_table :castewise_marks do |t|
      t.references :required_subject, index: true, foreign_key: true
      t.integer :gen
      t.integer :sc
      t.integer :st
      t.integer :obca
      t.integer :obcb

      t.timestamps null: false
    end
  end
end
