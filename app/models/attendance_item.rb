class AttendanceItem < ActiveRecord::Base
  belongs_to :attendance_list
  
  def completed?
    !completed_at.blank?
  end 
end
