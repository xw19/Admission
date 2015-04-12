class CandidateStream < ActiveRecord::Base
  belongs_to :stream
  belongs_to :candidate
  has_many :candidate_subjects
end
