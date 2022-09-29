class FixEventAttendancesIndex < ActiveRecord::Migration[7.0]
  def change
    remove_index :event_attendances, :attendee
    add_index :event_attendances, :attendee_id
  end
end
