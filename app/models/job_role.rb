class JobRole < ApplicationRecord
  belongs_to :business_location
  has_many :interviews
end
