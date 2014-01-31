json.array!(@hclasses) do |hclass|
  json.extract! hclass, :id, :name
  json.url hclass_url(hclass, format: :json)
end
