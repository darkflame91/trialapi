json.array!(@patients) do |patient|
  json.extract! patient, :id, :user_id, :bmi
  json.url patient_url(patient, format: :json)
end
