Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ski_shop', to: 'ski_shop#index'
  get '/ski_shop/:id', to: 'ski_shop#show'
  get '/skis', to: 'skis#index'
  get '/skis/:id', to: 'skis#show'
end
