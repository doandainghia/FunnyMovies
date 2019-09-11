json.extract! movie, :id, :title, :url, :description, :user_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
