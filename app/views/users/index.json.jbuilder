json.array!(@users) do |user|
  json.extract! user, :id, :facebook_id, :facebook_avatar, :registered
  json.url user_url(user, format: :json)
end
