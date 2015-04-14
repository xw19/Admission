class Address < ActiveRecord::Base
  belongs_to :personal

  validates :line1, presence: true, length: { maximum: 50 }
  validates :line2, length: { maximum: 50 }
  validates :city_village, presence: true, length: { maximum: 50 }
  validates :district, presence: true, length: { maximum: 50 }
  validates :state, presence: true, length: { maximum: 50 }
  validates :country, presence: true, length: { maximum: 50 }
end
