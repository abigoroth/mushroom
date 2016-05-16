class CreateSaleRecords < ActiveRecord::Migration
  def change
    create_table :sale_records do |t|
      t.float :arra
      t.float :purchase
      t.float :ttl_in
      t.float :ttl_out
      t.date :date

      t.timestamps
    end
  end
end
