json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :user_id, :event_id, :date
  json.url ticket_url(ticket, format: :json)
end
