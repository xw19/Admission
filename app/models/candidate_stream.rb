class CandidateStream < ActiveRecord::Base
  belongs_to :stream
  belongs_to :candidate
  has_many :candidate_subjects, dependent: :destroy
  accepts_nested_attributes_for :candidate_subjects

  validate :check_marks
  validates :stream_id, presence: true, numericality: { only_intger: true }
  def check_marks
    caste = self.candidate.personal.caste.gsub("-", "").downcase
    self.candidate_subjects.each do |cs|
      required_marks = cs.required_subject.castewise_mark.read_attribute(caste)
      errors.add(:stream_id, "Your marks is less than required marks in #{cs.required_subject.subject_name}") if required_marks > cs.marks
    end
  end
end
