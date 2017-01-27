class UserPosesController < ApplicationController
  def index 
    @user_poses = UserPose.all
    render 'index.html.erb'
  end

  def create
    @user_poses = UserPose.new(
      user_id: current_user.id,
      pose_id: params[:pose_id]
    )
    @user_poses.save
    redirect_to '/user'
  end

  def destroy 
    user_pose = UserPose.find_by(id: params[:id])
    user_pose.destroy
    redirect_to "/user"
  end
end
