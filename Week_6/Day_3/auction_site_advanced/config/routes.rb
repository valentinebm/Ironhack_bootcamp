Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#home'

  resources :products

  get '/profile', to: 'users#show'
  post '/ /:id/', to: 'bids#create', as: :bids

end
