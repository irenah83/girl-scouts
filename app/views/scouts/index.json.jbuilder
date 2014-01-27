json.array!(@scouts) do |scout|
  json.extract! scout, :id, :first_namestring last_name
  json.url scout_url(scout, format: :json)
end
