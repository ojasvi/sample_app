json.array!(@products) do |product|
  json.extract! product, :id, :name, :stock, :price, :company, :brand
  json.url product_url(product, format: :json)
end
