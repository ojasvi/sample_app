json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :stock, :permalink, :description, :company, :brand
  json.url product_url(product, format: :json)
end
