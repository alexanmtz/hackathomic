class Project < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  belongs_to :languages
  belongs_to :frameworks
  belongs_to :tags
  belongs_to :category
end
