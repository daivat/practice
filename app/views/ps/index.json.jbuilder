json.array!(@ps) do |p|
  json.extract! p, :id, :description
  json.url p_url(p, format: :json)
end
