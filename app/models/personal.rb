class Personal < ActiveRecord::Base
  belongs_to :candidate
  has_many :addresses
  accepts_nested_attributes_for :addresses, reject_if: lambda {|attributes| attributes['line1'].blank?}
end
