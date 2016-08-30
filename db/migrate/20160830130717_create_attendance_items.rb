class CreateAttendanceItems < ActiveRecord::Migration
  def change
    create_table :attendance_items do |t|
      t.string :content
      t.references :attendance_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
