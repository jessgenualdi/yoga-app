class UsersController < ApplicationController
  def index
    @user_poses = current_user.user_poses
   
  end

  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      phone_number: params[:phone_number],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Created account!"
      redirect_to '/anatomy'
    else
      flash[:warning] = "Invalid phone number or password!"
      redirect_to '/signup'
    end
  end

  def create_sequence
    user = PoseSequence.new(
      pose_id: params[:pose_id],
      sequence_id: rand(1000),
      )
    if PoseSequence.save
      session[:user_id] = user.id
      flash[:success] = "Sequence has haved to your dashboard!"
      redirect_to '/user'
    else
      flash[:warning] = "Unable to Save!"
      redirect_to '/sequence'
    end
  end

end
