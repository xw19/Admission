class CandidateSubject < ActiveRecord::Base
  belongs_to :required_subject
  belongs_to :candidate
  belongs_to :candidate_stream

  validates :marks, presence: true
end
