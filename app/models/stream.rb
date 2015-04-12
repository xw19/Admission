class Stream < ActiveRecord::Base
  has_one :castewise_mark, as: :caste_mark, dependent: :destroy
  has_many :required_subjects, dependent: :destroy
  has_many :candidate_streams
  accepts_nested_attributes_for :castewise_mark
  accepts_nested_attributes_for :required_subjects
end
