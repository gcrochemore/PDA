json.extract! account, :id, :name, :owner_id, :bank_id, :initial_amount, :created_at, :updated_at
json.url account_url(account, format: :json)