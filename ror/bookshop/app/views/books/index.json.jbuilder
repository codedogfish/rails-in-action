json.array!(@books) do |book|
  json.extract! book, :id, :id, :name, :author, :price
  json.url book_url(book, format: :json)
end
