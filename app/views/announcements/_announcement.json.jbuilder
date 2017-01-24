json.extract! announcement, :id, :name, :url, :publisher, :date, :price, :property, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)