require './player'
require './deck'
require './card'
require './cards'
require './decks'

puts 'Starting Hearthstone Deckbuilder'

puts 'Creating first player'
@player1 = Player.new(name: 'Player 1')

puts 'Creating second player'
@player2 = Player.new(name: 'Player 2')

puts 'Assigning deck to first player'
@player1.deck = Decks.get(name: 'Goldshire Footman')

puts 'Assigning deck to second player'
@player2.deck = Decks.get(name: 'Elven Archer')

@player1.set_opponent(@player2)
@player2.set_opponent(@player1)

1000.times do
  @game_running = true
  @winning_player = nil
  @rounds = 0

  @player1.reset
  @player2.reset

  puts 'Flipping coin'
  @current_player = nil
  coin = rand(2)
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

  while @game_running do
    puts 'Starting turn for current player'
    @current_player.draw
    @current_player.add_mana_crystal
    @current_player.start_round

    puts 'Performing AI'
    @current_player.play

    puts 'Checking if everyone is still alive'
    if @current_player.dead?
      @winning_player = @other_player
      @game_running = false
    elsif @other_player.dead?
      @winning_player = @current_player
      @game_running = false
    end

    puts 'Ending turn for current player'
    temp = @other_player
    @other_player = @current_player
    @current_player = temp

    @rounds += 1
  end

  puts @winning_player.name + ' has won the game in ' + @rounds.to_s + ' rounds!'
  @winning_player.wins += 1
end

puts @player1.name + ' ended with ' + @player1.wins.to_s + '.'
puts @player2.name + ' ended with ' + @player2.wins.to_s + '.'
