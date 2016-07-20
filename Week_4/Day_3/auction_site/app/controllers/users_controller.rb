class UsersController < ApplicationController

  def show
  end

  def create
  end

  def delete
  end

  def login
    @email = params[:email]
    @password = params[:password]
    
  end

end
