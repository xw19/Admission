class RequiredSubject < ActiveRecord::Base
  belongs_to :stream
  has_one :castewise_mark, as: :caste_mark, dependent: :destroy
  accepts_nested_attributes_for :castewise_mark
end
