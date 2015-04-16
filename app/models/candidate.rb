class Candidate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :personal, dependent: :destroy
  has_one :candidate_stream, dependent: :destroy
  has_many :candidate_subjects, dependent: :destroy
  has_many :qualifications, dependent: :destroy
end
