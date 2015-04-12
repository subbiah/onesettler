json.array!(@product_profiles) do |product_profile|
  json.extract! product_profile, :id, :name
  json.url product_profile_url(product_profile, format: :json)
end
