require 'sinatra'
require 'sinatra/reloader'
require 'rspec'
require 'pry'
require 'imdb'
require './lib/models/search'
require './lib/models/movies'


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
  @results = results
  erb :results
end
