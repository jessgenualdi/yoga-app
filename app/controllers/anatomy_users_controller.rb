class AnatomyUsersController < ApplicationController
  def index
    @anatomy_users = AnatomyUser.all

    render 'index.html.erb'
  end

end
