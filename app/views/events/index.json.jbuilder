json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :category, :postcode, :housename, :street, :town, :disabled_access, :email, :info
  json.url event_url(event, format: :json)
end
