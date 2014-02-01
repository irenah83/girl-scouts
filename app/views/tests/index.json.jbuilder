json.array!(@tests) do |test|
  json.extract! test, :id, :name, :birthday_wish
  json.url test_url(test, format: :json)
end
