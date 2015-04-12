class CreateCandidateStreams < ActiveRecord::Migration
  def change
    create_table :candidate_streams do |t|
      t.references :stream, index: true, foreign_key: true
      t.references :candidate, index: true, foreign_key: true
      t.boolean :requirements
      t.boolean :verified

      t.timestamps null: false
    end
  end
end
