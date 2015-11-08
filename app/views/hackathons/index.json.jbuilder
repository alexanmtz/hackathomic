json.array!(@hackathons) do |hackathon|
  json.extract! hackathon, :id, :name, :start, :ends, :location, :teams_id, :picture, :link, :languages, :frameworks, :github, :prize, :rules, :projects, :tags, :category, :user_id, :desc
  json.url hackathon_url(hackathon, format: :json)
end
