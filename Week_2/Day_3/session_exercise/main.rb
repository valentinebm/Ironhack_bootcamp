require 'sinatra'
require 'sinatra/reloader'
load 'lib/models.rb'
require 'pry'


get '/'  do
  erb :homepage
end

post '/login' do
  @username = params[:username]
  @password = params[:password]
  @user = Login.new(@username, @password)

  if @user.verify
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
  user = session[:current_user]

  erb :profile
  end
