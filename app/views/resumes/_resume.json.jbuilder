json.extract! resume, :id, :Title, :category, :year, :price, :attachment, :created_at, :updated_at
json.url resume_url(resume, format: :json)
