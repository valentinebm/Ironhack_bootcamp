class RemoveFieldMinimumAmountFromBi < ActiveRecord::Migration[5.0]
  def change
    remove_column :bids, :minimum_amount, :integer
  end
end
