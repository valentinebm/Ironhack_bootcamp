require 'sinatra'
require 'sinatra/reloader'


get '/'  do
  erb(:homepage)
end


get '/add'  do
  erb(:add)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  @result = first + second
  erb :result
end

post "/calculate_substract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  @result = first - second
  erb :result
end

post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  @result = first * second
  erb :result
end

post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  @result = first / second
  erb :result
end
