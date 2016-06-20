class BusinessLocation < ApplicationRecord

  belongs_to :company
  has_many :job_roles

  def full_street_address
    [address,suburb,state,postcode,country].compact.join(', ')
  end
end
