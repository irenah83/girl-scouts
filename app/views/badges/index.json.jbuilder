json.array!(@badges) do |badge|
  json.extract! badge, :id, :badge_name
  json.url badge_url(badge, format: :json)
end
