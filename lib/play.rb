require 'player'
require 'deck'
require 'card'
require 'cards'

puts 'Starting Hearthstone Deckbuilder'

puts 'Creating first player'
@player1 = Player.new(name: 'Player 1')

puts 'Assigning deck to first player'
@player1.deck = Deck.new(deck_class: 'mage')

puts 'Creating second player'
@player2 = Player.new(name: 'Player 2')

puts 'Assigning deck to second player'
@player2.deck = Deck.new(deck_class: 'mage')

@player1.set_opponent(@player2)
@player2.set_opponent(@player1)

puts 'Flipping coin'
@current_player = nil
coin = rand(1)
if coin == 0
  @current_player = @player1
  @other_player = @player2
  puts 'Player 1 won the toss'
else
  @current_player = @player2
  @other_player = @player1
  puts 'Player 2 won the toss'
end

puts 'Drawing cards for coin toss winner'
@current_player.draw(3)

puts 'Drawing cards for coin toss loser'
@other_player.draw(4)

puts 'Choosing mulligan for coin toss winner'
@current_player.mulligan

puts 'Choosing mulligan for coin toss loser'
@other_player.mulligan

puts 'Adding coin card to coin toss loser'
@other_player.add_card(Cards.get('The Coin'))

@game_running = true
@winning_player = nil

while @game_running do
  puts 'Starting turn for current player'
  @current_player.draw
  @current_player.add_mana_crystal
  @current_player.start_round

  puts 'Performing AI'
  @current_player.play

  puts 'Checking if everyone is still alive'
  if @current_player.dead?
    @winning_player = other_player
    @game_running = false
  elsif @other_player.dead?
    @winning_player = current_player
    @game_running = false
  end

  puts 'Ending turn for current player'
  temp = @other_player
  @other_player = @current_player
  @current_player = temp
end

puts @winning_player.name + ' has won the game!'