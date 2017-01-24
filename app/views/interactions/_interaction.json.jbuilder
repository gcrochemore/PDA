json.extract! interaction, :id, :name, :interaction_type_id, :date, :comments, :created_at, :updated_at
json.url interaction_url(interaction, format: :json)