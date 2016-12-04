json.extract! login_attempt, :id, :ip_address, :is_successful, :user_id, :created_at, :updated_at
json.url login_attempt_url(login_attempt, format: :json)