class Stream < ActiveRecord::Base
  has_many :required_subjects, dependent: :destroy
  has_many :candidate_streams
  accepts_nested_attributes_for :required_subjects, reject_if: lambda {|attributes| attributes['subject_name'].blank?}

  validates :name, presence: true, length: { maximum: 20 }
end
