json.array!(@companies) do |company|
  json.extract! company, :id, :user_id, :company_name
  json.url company_url(company, format: :json)
end
