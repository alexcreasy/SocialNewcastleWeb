json.array!(@jsons) do |json|
  json.extract! json, :id, :type, :data
  json.url json_url(json, format: :json)
end
