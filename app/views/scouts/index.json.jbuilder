json.array!(@scouts) do |scout|
  json.extract! scout, :id, :first_name, :last_name, :member_since, :leader_id, :chapter_id
  json.url scout_url(scout, format: :json)
end
