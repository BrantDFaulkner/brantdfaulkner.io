json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :url, :description, :category_id
  json.url resource_url(resource, format: :json)
end
