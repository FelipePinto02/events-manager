class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @event_id = params[:event_id]

    redirect_to root_path if params[:event_id].nil?
  end

  def show
    @user = User.find(params[:id])
    @future_events = @user.attended_events.future
    @past_events = @user.attended_events.past
  end
end
