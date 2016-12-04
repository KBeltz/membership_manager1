json.extract! membership, :id, :student_id, :membership_type_id, :start_date, :term, :created_at, :updated_at
json.url membership_url(membership, format: :json)