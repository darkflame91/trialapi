json.array!(@specializations) do |specialization|
  json.extract! specialization, :id, :type
  json.url specialization_url(specialization, format: :json)
end
