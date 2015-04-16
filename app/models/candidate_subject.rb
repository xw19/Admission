class CandidateSubject < ActiveRecord::Base
  belongs_to :required_subject
  belongs_to :candidate
  belongs_to :candidate_stream

  validates :marks, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 100 }
end
