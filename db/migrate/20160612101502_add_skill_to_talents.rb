class AddSkillToTalents < ActiveRecord::Migration[5.0]
  def change
    add_reference :talents, :skill_type, foreign_key: true
  end

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [address, suburb, state, postcode, country].compact.join(', ')
  end
end
