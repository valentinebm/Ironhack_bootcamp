class Bid < ApplicationRecord
  belongs_to :product
  has_one :user

  validate :amount_cannot_be_lower_than_minimum_bid
  validate :amount_cannot_be_lower_than_last_bid

  def amount_cannot_be_lower_than_minimum_bid
      if amount < product.minimum_bid
        errors.add(:amount, "can't be lower than the minimum bid required")
      end
    end

  def amount_cannot_be_lower_than_last_bid
    if Bid.exists?(:product_id =>self.product_id)
      @product = Product.find_by(id: self.product_id)
      @last_bid = @product.bids.order('bids.amount DESC').limit(1).first
      @last_bid_amount = @last_bid.amount

      if amount <= @last_bid.amount
      errors.add(:amount, "can't be lower than the last bid")
      end
    end
  end


end
