class EventAttendancesController < ApplicationController
  def create
    invited_user = User.find(params[:user_id])
    invited_user.event_attendances.build(attended_event_id: params[:event_id]).save

    flash[:notice] = 'Invited sent successfully!'
    redirect_to users_path(event_id: params[:event_id])
  end

  def update
    attendance = EventAttendance.find_by(attendee_id: current_user.id, attended_event_id: params[:event_id])

    if attendance.nil?
      flash[:alert] = 'Failed to attend event: not in the guests list.'
    else
      if attendance.invited?
        attendance.accepted!
        flash[:notice] = 'Invite accepted! Moved to attendees list.'
      else
        attendance.invited!
        flash[:notice] = 'Attendance canceled. Moved to invited list.'
      end
    end

    redirect_to event_path(params[:event_id])
  end

  def destroy
    event = Event.find(params[:event_id])
    event.attendees.delete(params[:user_id])

    flash[:notice] = 'Invited canceled successfully!'
    redirect_to users_path(event_id: params[:event_id])
  end
end
