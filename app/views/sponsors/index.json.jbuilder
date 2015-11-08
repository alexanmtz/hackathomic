json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :name, :picture
  json.url sponsor_url(sponsor, format: :json)
end
