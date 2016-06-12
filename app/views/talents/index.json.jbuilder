json.array!(@talents) do |talent|
  json.extract! talent, :id, :user_id, :skilltype_id, :video, :bio, :resume, :suburb, :latitude, :longitude
  json.url talent_url(talent, format: :json)
end
