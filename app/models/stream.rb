class Stream < ActiveRecord::Base
  has_one :castewise_mark, as: :caste_mark
  accepts_nested_attributes_for :castewise_mark
end
