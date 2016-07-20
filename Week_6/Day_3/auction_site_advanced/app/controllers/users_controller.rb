class UsersController < ApplicationController
  before_action :authorize_user, only: [:show]

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

    @products_offered = User.find_by(id: current_user.id).products
    @bids = Bid.where(user_id: current_user.id)
    @products_bid = []
    @bids.each do |bid|
      @products_bid.push(Product.find_by(id: bid.product_id))
    end
    @products_won_id = []
    @products_bid.each do |product|
      if (Bid.where(product_id: product.id).last).user_id == @current_user.id
        @products_won_id.push(product.id)
      end
    @products_really_won = @products_won_id.uniq
    end

  end

  def create
  end

  def delete
  end

  def login
  end

end
