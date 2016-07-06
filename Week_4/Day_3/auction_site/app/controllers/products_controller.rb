class ProductsController < ApplicationController

  def index
    @products = Product.order(created_at: :desc)
  end

  def show
    @product = Product.find_by(id: params[:id])
    @bid = Bid.new
    @bids = Bid.order(created_at: :desc)

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
