class CreateCandidateSubjects < ActiveRecord::Migration
  def change
    create_table :candidate_subjects do |t|
      t.references :required_subject, index: true, foreign_key: true
      t.references :candidate, index: true, foreign_key: true
      t.references :candidate_stream, index: true, foreign_key: true
      t.integer :marks

      t.timestamps null: false
    end
  end
end
