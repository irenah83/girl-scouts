json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :name, :leader_id, :organization_id, :meeting_time
  json.url chapter_url(chapter, format: :json)
end
