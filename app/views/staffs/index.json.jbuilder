json.array!(@staffs) do |staff|
  json.extract! staff, :id, :nama, :phone
  json.url staff_url(staff, format: :json)
end
