json.array!(@merchants) do |merchant|
  json.extract! merchant, :id, :category_id, :product_id
  json.url merchant_url(merchant, format: :json)
end
