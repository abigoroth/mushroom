class CreateCustomerPurchases < ActiveRecord::Migration
  def change
    create_table :customer_purchases do |t|
      t.integer :customer_id
      t.date :date
      t.float :quantity
      t.float :expected_payment
      t.float :actual_payment

      t.timestamps
    end
  end
end
