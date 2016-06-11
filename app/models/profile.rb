class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :picture, presence: true

  mount_uploader :picture, ProfilePictureUploader

end
