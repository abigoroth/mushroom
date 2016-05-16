class RemoveColumnTtlInFromRecordSales < ActiveRecord::Migration
  def change
    remove_column :sale_records, :ttl_in, :float
  end
end
