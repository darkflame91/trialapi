json.array!(@case_doctors) do |case_doctor|
  json.extract! case_doctor, :id, :case_id, :doctor_id
  json.url case_doctor_url(case_doctor, format: :json)
end
