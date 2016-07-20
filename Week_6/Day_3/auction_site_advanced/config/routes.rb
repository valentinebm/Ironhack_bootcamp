Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # get '/products', to: 'products#index'
  # get '/products/new', to:'products#new'
  # get '/products/:id', to:'products#show'
  resources :products

  post '/ /:id/', to: 'bids#create', as: :bids

end
