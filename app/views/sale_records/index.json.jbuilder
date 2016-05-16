json.array!(@sale_records) do |sale_record|
  json.extract! sale_record, :id, :arra, :purchase, :ttl_in, :ttl_out, :date
  json.url sale_record_url(sale_record, format: :json)
end
