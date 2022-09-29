class EventAttendancesController < ApplicationController
  def create
    @event_attendance = current_user.event_attendances.build(attended_event_id: params[:attended_event_id])
    @event_attendance.save
  end
end
