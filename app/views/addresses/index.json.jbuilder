json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :state, :organization_id
  json.url address_url(address, format: :json)
end
