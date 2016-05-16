json.array!(@production2s) do |production2|
  json.extract! production2, :id, :house_id, :date, :am, :pm
  json.url production2_url(production2, format: :json)
end
