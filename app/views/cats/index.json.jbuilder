json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :birth_date, :email
  json.url cat_url(cat, format: :json)
end
