require 'sinatra'
require 'sinatra/reloader'
require 'artii'

get '/'  do
  'This is my main page'
end

get '/ascii/:word/?:font?'  do
  @word = params[:word]
  @font = params[:font] || 'alligator'
  erb :word
end

get '/ascii/:word/?:font?/?:secret)' do
  @word = params[:word]
  @font = params[:font] || 'alligator'
  @secret = params[:secret]
    if @word == 'unicorn' && @font == 'special' && @secret == 'secret'
    erb :unicorn
  else
    erb :word
  end
end
