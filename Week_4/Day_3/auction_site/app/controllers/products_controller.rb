class ProductsController < ApplicationController

  def index
    @products = Product.order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    @bid = Bid.new
    @product_bids = Bid.where('product_id =?', @product.id)
    @user = User.find_by(id: @product)
    @deadline = @product.deadline
    @highest_bid = @product.bids.order('bids.amount DESC').limit(1).first
    @highest_bidder = User.find_by(id: @highest_bid.user_id)
    unless @product
      render 'no_product_found'
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(title: params[:product][:title], description: params[:product][:description],
                          deadline: params[:product][:deadline], user_id: 2)

    @product.save

    redirect_to '/products'
    # redirect_to '/products/#{@product.id}'
  end

  def destroy
  end

end
