class AddStatusToEventAttendances < ActiveRecord::Migration[7.0]
  def change
    add_column :event_attendances, :status, :integer, default: 0
  end
end
