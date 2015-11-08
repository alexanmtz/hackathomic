class Team < ActiveRecord::Base
  
  has_many :memberships
  has_many :users, through: :memberships
  belongs_to :user
  belongs_to :hackathon
  
  validates :name, presence: true
end
