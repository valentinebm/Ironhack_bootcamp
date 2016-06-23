require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :home
end

get '/coolpage' do
  redirect to '/'
end
