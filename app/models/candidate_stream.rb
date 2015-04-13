class CandidateStream < ActiveRecord::Base
  belongs_to :stream
  belongs_to :candidate
  has_many :candidate_subjects
  accepts_nested_attributes_for :candidate_subjects

end
