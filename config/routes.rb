Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ski_shops', to: 'ski_shop#index'

  get '/ski_shops/new', to: 'ski_shop#new'
  post '/ski_shops', to: 'ski_shop#create'

  get '/ski_shops/:id', to: 'ski_shop#show'
  get '/ski_shops/:id/edit', to: 'ski_shop#edit'
  patch '/ski_shops/:id', to: 'ski_shop#update'
  get '/ski_shops/:id/skis', to: 'ski_shop_skis#index'

  get '/ski_shops/:id/skis/new', to: 'ski_shop_skis#new'
  post '/ski_shops/:id/skis', to: 'ski_shop_skis#create'

  get '/skis', to: 'skis#index'
  get '/skis/:id', to: 'skis#show'
  
end
