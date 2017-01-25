class PagesController < ApplicationController
  def index 
    @anatomies = Anatomy.all 
    @poses = Pose.all 

    render 'index.html.erb'
  end

  def index_2 
    @anatomies = Anatomy.all 
    @poses = Pose.all 

    render 'index_2.html.erb'
  end

  def show
    anatomy_id = params[:id]
    @anatomy = anatomy.find_by(id: anatomy_id)
    render 'show.html.erb'
  end
end
