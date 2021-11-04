json.extract! profile, :id, :user_id, :looking_for, :age, :gender, :budget, :move_in_data, :stay_length, :occupation, :children, :is_non_smoker, :is_cat, :is_dog, :is_student, :is_lgbt, :is_cannabis, :description, :created_at, :updated_at
json.url profile_url(profile, format: :json)
