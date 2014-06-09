json.array!(@kittens) do |kitten|
  json.extract! kitten, :id, :url, :meow, :not_meow
  json.url kitten_url(kitten, format: :json)
end
