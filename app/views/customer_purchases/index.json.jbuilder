json.array!(@customer_purchases) do |customer_purchase|
  json.extract! customer_purchase, :id, :customer_id, :date, :quantity, :expected_payment, :actual_payment
  json.url customer_purchase_url(customer_purchase, format: :json)
end
