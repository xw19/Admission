class RequiredSubject < ActiveRecord::Base
  belongs_to :stream
  has_one :castewise_mark, dependent: :destroy
  has_many :candidate_subject
  accepts_nested_attributes_for :castewise_mark
  validates_associated :castewise_mark

  validates :subject_name, presence: true, length: { maximum: 20 }

  def to_s
    self.subject_name
  end
end
