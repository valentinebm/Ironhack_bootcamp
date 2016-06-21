require 'sinatra'
require 'sinatra/reloader'


get '/'  do
  erb(:homepage)
end


get '/add'  do
  erb(:add)
end

post '/calculation' do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = params[:operation]

  if operation == "addition"
  @result = first + second
  erb :result

  elsif operation == "substraction"
  @result = first - second
  erb :result

  elsif operation == "multiplication"
  @result = first * second
  erb :result

  elsif operation == "division"
  @result = first / second
  erb :result

  end
end
