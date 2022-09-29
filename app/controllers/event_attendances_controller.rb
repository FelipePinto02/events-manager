class EventAttendancesController < ApplicationController
  def create
    @event_attendance = current_user.event_attendances.build(attended_event_id: params[:event_id])
    @event_attendance.save

    redirect_to event_path(params[:event_id])
  end

  def destroy
    @event = Event.find(params[:event_id])
    @event.attendees.delete(current_user.id)

    redirect_to event_path(params[:event_id])
  end
end
