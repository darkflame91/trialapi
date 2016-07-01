json.array!(@case_media) do |case_medium|
  json.extract! case_medium, :id, :case_id, :mediatype_id, :mediacode, :has_attachment
  json.url case_medium_url(case_medium, format: :json)
end
