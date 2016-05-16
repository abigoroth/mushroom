class DropColumnBalanceFromSaleRecords < ActiveRecord::Migration
  def change
		remove_column :sale_records, :balance
  end
end
