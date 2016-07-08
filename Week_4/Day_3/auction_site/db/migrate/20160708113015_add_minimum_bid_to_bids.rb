class AddMinimumBidToBids < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :minimum_bid, :string
    add_column :bids, :integer, :string
  end
end
