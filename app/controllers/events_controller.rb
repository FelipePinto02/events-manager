class EventsController < ApplicationController
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

  private

  def events_params
    params.require(:event).permit(:location, :date)
  end
end
