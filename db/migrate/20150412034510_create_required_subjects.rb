class CreateRequiredSubjects < ActiveRecord::Migration
  def change
    create_table :required_subjects do |t|
      t.string :subject_name
      t.references :stream, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
