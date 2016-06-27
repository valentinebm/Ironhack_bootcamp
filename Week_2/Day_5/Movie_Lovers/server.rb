require 'sinatra'
require 'sinatra/reloader'
require 'rspec'
require 'pry'
require 'imdb'
require './lib/models/search'



results = []

get '/' do
  erb :home
end

post '/search' do
  keywords =  params[:keywords]
  results = SearchMovies.search(keywords)
  # binding.pry
  redirect to '/results'
end


get '/results' do
  @results = results[0..14]
  erb :results
end
