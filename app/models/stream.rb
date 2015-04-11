class Stream < ActiveRecord::Base
  has_one :castewise_mark, as: :caste_marks
end