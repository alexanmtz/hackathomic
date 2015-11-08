class Hackathon < ActiveRecord::Base
  has_many :teams
  belongs_to :user
  
  has_many :rules
  has_many :tags
  has_one :category
  
  validates :name, presence: true
  
end
