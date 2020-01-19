class Shop < ApplicationRecord
  has_many :shop_admins
  has_many :items
end
