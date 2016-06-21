require 'sinatra'
require 'sinatra/reloader'

get '/'  do
  'This is my super web app'
end

get '/about'  do
  erb :about
end


get '/hi' do
  @name = 'Valentine'
  erb :hi
end

get '/time' do
  t = Time.now
  @timeclear = t.strftime("%I:%M%p")
  erb :time
end

get '/fruits' do
  @fruits = ['oranges', 'lemons', 'apples']
  @colors = ['pink', 'blue', 'yellow']
  erb :fruits
end

get'/users/:username' do
  @username = params[:username]
  erb :user
end

get'/hours/ago/:hours' do
  @hours = params[:hours]
  erb :hours
end
