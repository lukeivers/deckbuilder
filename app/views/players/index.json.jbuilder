json.array!(@players) do |player|
  json.extract! player, :id, :hclass_id, :deck_id
  json.url player_url(player, format: :json)
end
