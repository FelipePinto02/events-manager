class AddPrimaryKeyToEventAttendances < ActiveRecord::Migration[7.0]
  def change
    add_column :event_attendances, :id, :primary_key
  end
end
