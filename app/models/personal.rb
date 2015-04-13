class Personal < ActiveRecord::Base
  belongs_to :candidate
  has_many :addresses
  accepts_nested_attributes_for :addresses, reject_if: lambda {|attributes| attributes['line1'].blank?}
  validates :first_name, presence: true, length: { maximum: 20 }
  validates :middle_name, length: { maximum: 20 }
  validates :last_name,presence: true, length: { maximum: 20 }

end
