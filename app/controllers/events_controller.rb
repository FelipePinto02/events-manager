class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @past_events = Event.past.all
    @future_events = Event.future.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(events_params)

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(events_params)
      redirect_to @event
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.attendees.clear
    @event.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def events_params
    params.require(:event).permit(:location, :date, :name, :description)
  end
end
