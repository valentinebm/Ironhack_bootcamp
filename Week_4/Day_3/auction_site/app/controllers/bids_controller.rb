class BidsController < ApplicationController
  def create
    @product = Product.find_by(id: params[:id])
    @email = params[:bid_email]
    @user = User.find_by(email: @email)
    @bid = Bid.new(user_id: @user.id, amount: params[:bid][:amount], product_id: @product.id)
    @bid.save
    redirect_to '/products'
  end
end
