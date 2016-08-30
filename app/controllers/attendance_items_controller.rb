class AttendanceItemsController < ApplicationController
  before_action :set_attendance_list
  before_action :set_attendance_item, except: [:create]

  def create
    @attendance_item = @attendance_list.attendance_items.create(attendance_item_params)
    redirect_to @attendance_list
  end

  def destroy
    if @attendance_item.destroy
      flash[:success] = "Student was deleted"
    else
      flash[:error] = "Student could not be deleted"
    end
    redirect_to @attendance_list

  end

  def complete
    @attendance_item.update_attribute(:completed_at, Time.now)
    redirect_to @attendance_list, notice: "Student arrived"
  end

  private

  def set_attendance_list
        @attendance_list = AttendanceList.find(params[:attendance_list_id])
  end

  def set_attendance_item
        @attendance_item = @attendance_list.attendance_items.find(params[:id])
  end


  def attendance_item_params
    params[:attendance_item].permit(:content)
  end

end
