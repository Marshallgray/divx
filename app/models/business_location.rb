class BusinessLocation < ApplicationRecord

  belongs_to :company
  self.geocoded_by :full_street_address
  after_validation :geocode
  has_many :job_roles

  def full_street_address
    [address,suburb,state,postcode,country].compact.join(', ')
  end
end
