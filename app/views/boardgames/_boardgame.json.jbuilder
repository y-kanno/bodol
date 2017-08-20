json.extract! boardgame, :id, :name, :description, :created_at, :updated_at
json.url boardgame_url(boardgame, format: :json)
