Rails.application.routes.draw do
  resources :items
  resources :shop_admins
  resources :shops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
