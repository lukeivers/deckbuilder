json.array!(@decks) do |deck|
  json.extract! deck, :id, :name, :hclass_id
  json.url deck_url(deck, format: :json)
end
