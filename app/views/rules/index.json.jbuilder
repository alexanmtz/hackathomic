json.array!(@rules) do |rule|
  json.extract! rule, :id, :name
  json.url rule_url(rule, format: :json)
end
