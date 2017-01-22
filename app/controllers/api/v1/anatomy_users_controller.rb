class Api::V1::AnatomyUsersController < ApplicationController
  def index
    @anatomy_users = AnatomyUser.where(user_id: current_user.id)
    render 'index.json.jbuilder'
  end

  def create
    AnatomyUser.where(user_id: current_user.id).destroy_all
    params[:anatomy_ids].each do |anatomy_id|
      @anatomy_users = AnatomyUser.new(
        user_id: current_user.id,
        anatomy_id: anatomy_id,
      )
      @anatomy_users.save
    end
    # @anatomy_users = AnatomyUser.new(
    #   user_id: current_user.id,
    #   anatomy_id: params[:anatomy_id],
    # )
    # @anatomy_users.save
    # p @anatomy_users.errors.full_messages
  end

  def show
    render 'show.json.builder'
  end
end
