Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'users#index'
  post '/users', to: 'users#login'

  # get '/products', to: 'products#index'
  # get '/products/new', to:'products#new'
  # get '/products/:id', to:'products#show'
  resources :products

  post '/products/', to:'products#create'
  post '/ /:id/', to: 'bids#create', as: :bids

end
