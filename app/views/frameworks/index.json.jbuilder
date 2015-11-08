json.array!(@frameworks) do |framework|
  json.extract! framework, :id, :name
  json.url framework_url(framework, format: :json)
end
