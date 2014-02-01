json.array!(@leaders) do |leader|
  json.extract! leader, :id, :first_name, :last_name, :email, :speciality_id
  json.url leader_url(leader, format: :json)
end
