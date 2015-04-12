json.array!(@service_type_masters) do |service_type_master|
  json.extract! service_type_master, :id
  json.url service_type_master_url(service_type_master, format: :json)
end
