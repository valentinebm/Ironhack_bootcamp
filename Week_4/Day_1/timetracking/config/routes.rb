# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  get '/', to: 'site#home'
end

Rails.application.routes.draw do
  get '/contact', to: 'site#contact'
end
