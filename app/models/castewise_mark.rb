class CastewiseMark < ActiveRecord::Base
  belongs_to :required_subject

  validates :gen, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 100 }
  validates :sc, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 100 }
  validates :st, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 100 }
  validates :obca, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 100 }
  validates :obcb, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 100 }

end
