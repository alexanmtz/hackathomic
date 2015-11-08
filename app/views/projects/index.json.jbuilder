json.array!(@projects) do |project|
  json.extract! project, :id, :name, :url, :team_id, :user_id, :picture, :desc, :languages_id, :frameworks_id, :tags_id, :category_id
  json.url project_url(project, format: :json)
end
