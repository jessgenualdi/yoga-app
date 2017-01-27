class SequencesController < ApplicationController
  def index
    # @user = current_user
    # @anatomies = AnatomyUsers.where(:user_id => @user).
    # @poses=[]
    # @anatomies.each do |anatomy|
    #   @pose = AnatomyPoses.where(:anatomy_id => anatomy.anatomy_id)     
    #   @poses << @pose   
    # end
    @anatomy_users = current_user.anatomy_users
    @poses = []
    
    rand(5..12).times do
      anatomy_id = @anatomy_users.sample.anatomy_id
      puts "-" * 20 + "#{anatomy_id}"
      @poses << AnatomyPose.where(anatomy_id: anatomy_id).sample.pose
    end
    render "index.html.erb"
  end
end
