class AttendanceList < ActiveRecord::Base
  has_many :attendance_items
end
