Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ski_shops', to: 'ski_shop#index'
  get '/ski_shops/new', to: 'ski_shop#new'
  get '/ski_shops/:id', to: 'ski_shop#show'
  get '/ski_shops/:id/edit', to: 'ski_shop#edit'
  patch '/ski_shops/:id', to: 'ski_shop#update'
  get '/ski_shops/:ski_shop_id/skis', to: 'ski_shop_skis#index'
  post '/ski_shops', to: 'ski_shop#create'
  get '/skis', to: 'skis#index'
  get '/skis/:id', to: 'skis#show'
  
end
