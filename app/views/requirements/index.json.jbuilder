json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :goal_id, :goal_type, :name, :instructions
  json.url requirement_url(requirement, format: :json)
end
