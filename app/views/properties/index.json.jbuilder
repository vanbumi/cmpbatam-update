json.array!(@properties) do |property|
  json.extract! property, :id, :name, :location, :status, :property_type, :bedroom, :bathroom, :price, :area
  json.url property_url(property, format: :json)
end
