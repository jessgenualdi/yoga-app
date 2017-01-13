class PagesController < ApplicationController
  def index 
    @anatomies = Anatomy.all 
    @poses = Pose.all 

    render 'index.html.erb'
  end
end
