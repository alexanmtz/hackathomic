json.array!(@teams) do |team|
  json.extract! team, :id, :name, :user_id, :picture, :location, :users
  json.url team_url(team, format: :json)
end
