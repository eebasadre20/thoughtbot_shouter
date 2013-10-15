class FollowingRelationshipsController < ApplicationController

def create
  unfollowed_user = User.find(params[:user_id])
  current_user.follow unfollowed_user
  redirect_to unfollowed_user
end


end
