json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :msrp
  json.url product_url(product, format: :json)
end
