class Company < ApplicationRecord
  belongs_to :user
  mount_uploader :company_logo, CompanyLogoUploader
end
