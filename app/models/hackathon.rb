class Hackathon < ActiveRecord::Base
  belongs_to :teams
  belongs_to :user
  
  has_many :rules
  has_many :tags
  has_one :category
  
  validates :name, presence: true
  
end
