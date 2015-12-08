json.array!(@shelves) do |shelf|
  json.extract! shelf, :id, :name, :state, :open_date, :harvest_date, :close_date, :end_date, :cycle
  json.url shelf_url(shelf, format: :json)
end
