json.array!(@productions) do |production|
  json.extract! production, :id, :production_date, :a, :b, :c, :d, :pa, :pb
  json.url production_url(production, format: :json)
end
