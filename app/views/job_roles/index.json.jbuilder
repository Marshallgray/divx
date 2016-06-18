json.array!(@job_roles) do |job_role|
  json.extract! job_role, :id, :title, :description, :business_location_id
  json.url job_role_url(job_role, format: :json)
end
