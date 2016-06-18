class Talent < ApplicationRecord
  belongs_to :user
  has_many :interviews
  validates :bio, :suburb, presence: true
  mount_uploader :resume, ResumeUploader

end
