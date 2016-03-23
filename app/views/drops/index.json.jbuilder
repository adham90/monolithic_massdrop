json.array!(@drops) do |drop|
  json.extract! drop, :id, :description, :end_at
  json.url drop_url(drop, format: :json)
end
