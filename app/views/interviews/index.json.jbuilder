json.array!(@interviews) do |interview|
  json.extract! interview, :id, :job_role_id, :talent_id, :time, :date, :location, :comments, :Approved
  json.url interview_url(interview, format: :json)
end
