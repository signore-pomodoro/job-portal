json.extract! job, :id, :title, :format, :salary, :created_at, :updated_at
json.url job_url(job, format: :json)
