json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address, :site, :facebook, :twitter, :contact, :email
  json.url location_url(location, format: :json)
end
