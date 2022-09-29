class EventAttendance < ApplicationRecord
  belongs_to :attended_event, class_name: 'Event'
  belongs_to :attendee, class_name: 'User'
  enum status: { invited: 0, accepted: 1 }
end
