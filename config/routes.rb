Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ski_shops', to: 'ski_shop#index'
  get '/ski_shops/:id', to: 'ski_shop#show'
  get '/ski_shops/:ski_shop_id/skis', to: 'ski_shop_skis#index'
  get '/skis', to: 'skis#index'
  get '/skis/:id', to: 'skis#show'
  
end
