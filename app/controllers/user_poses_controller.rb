class UserPosesController < ApplicationController
  def create
    userPose.where(user_id: current_user.id).destroy_all
    params[:pose_ids].each do | pose_id|
      @userPose = userPose.new(
        user_id: current_user.id,
        pose_id: pose_id,
      )
      @user_poses.save
    end
end
