class Address < ActiveRecord::Base
  belongs_to :personal

  validates :line1, presence: true, length: { maximum: 50 }
  validates :line2, length: { maximum: 50 }
  validates :city_village, presence: true, length: { maximum: 50 }
  validates :district, presence: true, length: { maximum: 50 }
  validates :state, presence: true, length: { maximum: 50 }
  validates :country, presence: true, length: { maximum: 50 }
  validates :pin, presence: true,  numericality: { only_integer: true }, format: { with: /[1-9]{1}[0-9]{5}/ }
  validates :mobile, presence: true , format: { with: /[7-9]{1}[0-9]{9}/ }
end
