json.extract! work_experience, :id, :resume_id, :name, :scholl, :begin_date, :end_date, :created_at, :updated_at
json.url work_experience_url(work_experience, format: :json)