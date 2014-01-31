json.array!(@games) do |game|
  json.extract! game, :id, :player1_id, :player2_id, :current_player_id
  json.url game_url(game, format: :json)
end
