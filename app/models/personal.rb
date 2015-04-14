class Personal < ActiveRecord::Base
  belongs_to :candidate
  has_many :addresses
  accepts_nested_attributes_for :addresses, reject_if: lambda {|attributes| attributes['line1'].blank?}
  validates :first_name, presence: true, length: { maximum: 20 }
  validates :middle_name, length: { maximum: 20 }
  validates :last_name,presence: true, length: { maximum: 20 }
  validates :date_of_birth, presence: true
  validates :fathers_name, presence: true, length: { maximum: 50 }
  validates :mothers_name, presence: true, length: { maximum: 50 }
  validates :caste, presence: true, inclusion: { in: %w(GEN SC ST OBC-A OBC-B)}
end
