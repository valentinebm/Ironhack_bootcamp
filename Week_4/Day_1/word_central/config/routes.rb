Rails.application.routes.draw do
  get '/' => 'site#home', as: :home
  get '/text_inspections/new' => 'text_inspections#new'
  post '/text_inspections', to: "text_inspections#create"
  get '/asciis/new', to: "asciis#new"
  post '/asciis/', to: "asciis#create", as: :ascii
end
