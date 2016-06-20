class BusinessLocation < ApplicationRecord
  belongs_to :company
  has_many :job_roles

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [address,suburb,state,postcode,country].compact.join(', ')
  end
end
