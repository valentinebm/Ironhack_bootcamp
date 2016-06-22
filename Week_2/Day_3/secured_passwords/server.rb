require 'sinatra'
require 'sinatra/reloader'
require './lib/password_checker_ruby.rb'

get '/' do
  erb :homepage
end

post '/logged_in' do
  @username = params[:username]
  @password = params[:password]
  user = PasswordChecker.new(@username, @password)
  if user.check_password
    erb :congrats
  else
    redirect to ('/')
  end

end
