class PosesController < ApplicationController
  def index
    @poses = Pose.all

    render 'index.html.erb'
  end

  def show
    pose_id = params[:id]
    @pose = Pose.find_by(id: pose_id)
    render 'show.html.erb'
  end
end
