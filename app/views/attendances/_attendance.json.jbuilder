json.extract! attendance, :id, :student_id, :type, :date, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)