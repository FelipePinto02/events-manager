class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all

    redirect_to root_path if params[:event_id].nil?
  end

  def show
    @user = User.find(params[:id])
  end
end
