class AttendanceItemsController < ApplicationController
  before_action :set_attendance_list

  def create
    @attendance_item = @attendance_list.attendance_items.create(attendance_item_params)
    redirect_to @attendance_list
  end

  def destroy
    @attendance_item = @attendance_list.attendance_items.find(params[:id])
    if @attendance_item.destroy
      flash[:success] = "Student was deleted"
    else
      flash[:error] = "Student could not be deleted"
    end 
    redirect_to @attendance_list
      
  end

  private

  def set_attendance_list
        @attendance_list = AttendanceList.find(params[:attendance_list_id])
  end

  def attendance_item_params
    params[:attendance_item].permit(:content)
  end

end
