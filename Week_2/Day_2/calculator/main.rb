require 'sinatra'
require 'sinatra/reloader'
load 'lib/Calculator.rb'

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

    elsif operation == "substraction"
      @result = @system.substract

    elsif operation == "multiplication"
      @result = @system.multiply

    elsif operation == "division"
      @result = @system.divide

    end
  erb :result
end
