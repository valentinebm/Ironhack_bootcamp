require 'artii'

class AsciisController < ApplicationController

  def new
  end

  def create
    @word = params[:asciis][:user_word]
    render "ascii_art"
  end

end
