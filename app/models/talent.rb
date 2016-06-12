class Talent < ApplicationRecord
  belongs_to :user
  validates :bio, :suburb, presence: true
  mount_uploader :resume, ResumeUploader

  resourcify
end
