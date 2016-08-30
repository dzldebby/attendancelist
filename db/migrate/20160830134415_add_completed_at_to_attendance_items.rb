class AddCompletedAtToAttendanceItems < ActiveRecord::Migration
  def change
    add_column :attendance_items, :completed_at, :datetime
  end
end
