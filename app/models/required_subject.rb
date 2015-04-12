class RequiredSubject < ActiveRecord::Base
  belongs_to :stream
  has_one :castewise_mark, as: :caste_mark, dependent: :destroy
  has_many :candidate_subject
  accepts_nested_attributes_for :castewise_mark
end
