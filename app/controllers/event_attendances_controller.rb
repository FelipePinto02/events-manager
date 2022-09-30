class EventAttendancesController < ApplicationController
  def create
    invited_user = User.find(params[:user_id])
    invited_user.event_attendances.build(attended_event_id: params[:event_id]).save

    redirect_to event_path(params[:event_id])
  end

  def update
    attendance = EventAttendance.find_by(attendee_id: current_user.id, attended_event_id: params[:event_id])

    if attendance.nil?
      return # will add flash messages
    else
      attendance.invited? ? attendance.accepted! : attendance.invited!
    end

    redirect_to event_path(params[:event_id])
  end

  def destroy
    event = Event.find(params[:event_id])
    event.attendees.delete(params[:user_id])

    redirect_to event_path(params[:event_id])
  end
end
