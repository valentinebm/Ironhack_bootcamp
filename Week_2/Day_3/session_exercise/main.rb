require 'sinatra'
require 'sinatra/reloader'
load 'lib/models.rb'
require 'pry'


get '/'  do
  erb :homepage
end

post '/home' do
  @username = params[:username]
  @password = params[:password]
  @user = User.new(@username, @password)

  if @user.verify(@username, @password) == true
    redirect to '/logged'

  else
    redirect to '/'
  end
end


get '/logged' do
  erb :logged
end
