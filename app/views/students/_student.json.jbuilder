json.extract! student, :id, :student_number, :account_type_id, :first_name, :last_name, :address1, :address2, :city, :state, :zip, :birthdate, :created_at, :updated_at
json.url student_url(student, format: :json)