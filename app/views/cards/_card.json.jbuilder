json.extract! card, :id, :category, :company_name, :amount, :expire, :created_at, :updated_at
json.url card_url(card, format: :json)
