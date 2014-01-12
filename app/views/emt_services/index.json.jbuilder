json.array!(@emt_services) do |emt_service|
  json.extract! emt_service, :id, :name, :address, :phone, :imgageUrl
  json.url emt_service_url(emt_service, format: :json)
end
