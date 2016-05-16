class AddMarketIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :market_id, :integer
  end
end
