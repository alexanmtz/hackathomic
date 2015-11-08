json.array!(@teams) do |team|
  json.extract! team, :id, :name, :user_id, :picture, :location
  json.url team_url(team, format: :json)
end
