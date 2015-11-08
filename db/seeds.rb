# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create!(email: 'palo@alto.com', 
             password: '123456789', 
             password_confirmation: '123456789')
             
user2 = User.create!(email: 'mat@alto.com', 
             password: '123456789', 
             password_confirmation: '123456789')
             
user3 = User.create!(email: 'paul@alto.com', 
             password: '123456789', 
             password_confirmation: '123456789')
             

Team.create!(name: 'footeam', user: user1, users: [user2, user3] )
