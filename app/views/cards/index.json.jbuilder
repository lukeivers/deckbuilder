json.array!(@cards) do |card|
  json.extract! card, :id, :type, :hclass_id, :cost
  json.url card_url(card, format: :json)
end
