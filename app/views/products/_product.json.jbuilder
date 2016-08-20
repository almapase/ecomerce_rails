json.extract! product, :id, :name, :stock, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)