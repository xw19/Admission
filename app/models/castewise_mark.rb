class CastewiseMark < ActiveRecord::Base
  belongs_to :caste_mark, polymorphic: true
end
