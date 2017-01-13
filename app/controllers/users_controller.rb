class UsersController < ApplicationController

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
      redirect_to '/'
    else
      flash[:warning] = "Invalid phone number or password!"
      redirect_to '/signup'
    end
  end

end
