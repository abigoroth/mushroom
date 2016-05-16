class AddBalanceToSaleRecords < ActiveRecord::Migration
  def change
    add_column :sale_records, :balance, :float
  end
end
