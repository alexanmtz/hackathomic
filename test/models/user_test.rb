require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   
   test "user create a team" do
     user = User.new
     team = Team.new(:name => 'foo', :user => user)
     
     assert_equal(team.user, user)
   end
   
   test "adding one member" do
     user = User.new
     user2 = User.new
     
     team = Team.new(:name => 'foo2', :user => user, :users => [user2])
     
     assert_equal(team.users, [user2])
   end
   
   test "adding members" do
     user = User.new
     user2 = User.new
     user3 = User.new
     
     team = Team.new(:name => 'foo3', :user => user, :users => [user2, user3])
     
     assert_equal(team.users, [user2, user3])
   end
   
end
