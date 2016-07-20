class RemoveFieldMinimumBidFromBids < ActiveRecord::Migration[5.0]
  def change
    remove_column :bids, :minimum_bid, :integer
  end
end
