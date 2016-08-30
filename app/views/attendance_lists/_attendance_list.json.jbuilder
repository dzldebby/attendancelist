json.extract! attendance_list, :id, :title, :description, :created_at, :updated_at
json.url attendance_list_url(attendance_list, format: :json)