require 'sinatra'
require 'sinatra/reloader'
load 'lib/class.rb'

get '/'  do
  erb(:homepage)
end


get '/add'  do
  erb(:add)
end

post '/calculation' do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  operation = params[:operation]

  @system = Calculator.new(@first, @second)

  if operation == "addition"
  @result = @system.add
  erb :result

  elsif operation == "substraction"
  @result = @system.substract
  erb :result

  elsif operation == "multiplication"
  @result = @system.multiply
  erb :result

  elsif operation == "division"
  @result = @system.divide
  erb :result

  end
end
