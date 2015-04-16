class Qualification < ActiveRecord::Base
  belongs_to :candidate
  mount_uploader :certificate, CertificateUploader
end
