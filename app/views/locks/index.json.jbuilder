json.array!(@locks) do |lock|
  json.extract! lock, :id, :required_joins, :drop_to, :unlocked, :drop_id
  json.url lock_url(lock, format: :json)
end
