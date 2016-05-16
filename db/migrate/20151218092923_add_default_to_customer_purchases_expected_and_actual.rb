class AddDefaultToCustomerPurchasesExpectedAndActual < ActiveRecord::Migration
  def change
	change_column :customer_purchases, :expected_payment, :float, :default => 0
	change_column :customer_purchases, :actual_payment, :float, :default => 0
  end
end
