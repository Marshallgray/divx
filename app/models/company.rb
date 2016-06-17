class Company < ApplicationRecord
  belongs_to :user
  has_many :business_locations
  mount_uploader :company_logo, CompanyLogoUploader

end
