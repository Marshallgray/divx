class CreateBusinessLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :business_locations do |t|
      t.string :title
      t.string :address
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
