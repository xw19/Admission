class Qualification < ActiveRecord::Base
  belongs_to :candidate
  mount_uploader :certificate, CertificateUploader

  validates :name, presence: true, length: { maximum: 20 }
  validates :description, length: { maximum: 50 }
  validates :certificate, presence: true
  validates :points, presence: true, numericality: { only_integer: true }
  validates :year, presence: true, numericality: { only_integer: true, less_than_or_equal_to: Time.now.year }
  validates :issuing_authority, presence: true, length: { maximum: 20 }
end
