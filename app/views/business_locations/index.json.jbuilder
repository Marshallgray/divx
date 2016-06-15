json.array!(@business_locations) do |business_location|
  json.extract! business_location, :id, :title, :suburb, :state, :postcode, :country, :latitude, :longitude, :company_id
  json.url business_location_url(business_location, format: :json)
end
