json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :user_id, :specialization_id
  json.url doctor_url(doctor, format: :json)
end
