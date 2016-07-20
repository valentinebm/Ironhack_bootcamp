class UsersController < ApplicationController

  def home
    if current_user.nil?
    @name = 'stranger'

    else
    @name = current_user.name
    end
  end

  def index
    @users = User.all
  end

  def show
  end

  def create
  end

  def delete
  end

  def login
  end

end
