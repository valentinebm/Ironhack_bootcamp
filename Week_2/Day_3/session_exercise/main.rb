require 'sinatra'
require 'sinatra/reloader'
require './lib/models'
require 'pry'

enable(:sessions)

get '/'  do
  erb :homepage
end

get '/login' do
  if session[:current_user] != nil
    erb :profile
  else
  erb :homepage
end
end

post '/login' do
  @username = params[:username]
  @password = params[:password]
  user = Login.new(@username, @password)

  if user.verify
    session[:current_user] = {
      username: @username,
      password: @password
    }
    redirect to '/profile'

  else
    redirect to '/'
  end
end

get '/profile' do
  if session[:current_user] == nil
    redirect to '/'
  else
  erb :profile
  end

end

post '/logout' do
  session[:current_user] = nil
  redirect to('/login')
end
