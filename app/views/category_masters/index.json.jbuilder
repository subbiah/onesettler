json.array!(@category_masters) do |category_master|
  json.extract! category_master, :id, :categoryname
  json.url category_master_url(category_master, format: :json)
end
