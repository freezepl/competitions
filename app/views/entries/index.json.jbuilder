json.array!(@entries) do |entry|
  json.extract! entry, :id, :competition_id, :name, :description
  json.url entry_url(entry, format: :json)
end
