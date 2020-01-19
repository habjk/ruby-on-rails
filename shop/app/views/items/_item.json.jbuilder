json.extract! item, :id, :itemCatagory, :picPath, :videoPath, :detail, :price, :shop_id, :created_at, :updated_at
json.url item_url(item, format: :json)
