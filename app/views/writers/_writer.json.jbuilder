json.extract! writer, :id, :piece, :genre, :year, :responsible, :comment, :premiere, :created_at, :updated_at
json.url writer_url(writer, format: :json)
