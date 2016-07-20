class AddMinimumAmountToBids < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :minimum_amount, :integer
  end
end
