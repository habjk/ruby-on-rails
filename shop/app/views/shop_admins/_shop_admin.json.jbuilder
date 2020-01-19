json.extract! shop_admin, :id, :fname, :lname, :email, :password, :owns_id, :created_at, :updated_at
json.url shop_admin_url(shop_admin, format: :json)
