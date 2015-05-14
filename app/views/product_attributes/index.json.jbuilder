json.array!(@product_attributes) do |product_attribute|
  json.extract! product_attribute, :id, :key, :value, :desc, :product_id, :permalink
  json.url product_attribute_url(product_attribute, format: :json)
end
