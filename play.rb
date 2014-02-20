require './logger'
require './cards'
require './players'
require './deck'
require './decks'
require './game'
require 'pp'

def play_games(number_of_games)
  @player1.wins = 0
  @player2.wins = 0
  number_of_completed_games = 0
  number_of_games.times do
    game = Game.new
    @game_running = true
    @winning_player = nil
    @rounds = 0

    @player1.reset
    @player2.reset

    @player1.game = game
    @player2.game = game

    Logger.log 'Flipping coin'
    @current_player = nil
    coin = rand(2)
    if coin == 0
      @player1.coin_wins += 1
      @current_player = @player1
      @other_player = @player2
      Logger.log 'Player 1 won the toss'
    else
      @player2.coin_wins += 1
      @current_player = @player2
      @other_player = @player1
      Logger.log 'Player 2 won the toss'
    end

    Logger.log 'Drawing cards for coin toss winner'
    @current_player.draw(3)

    Logger.log 'Drawing cards for coin toss loser'
    @other_player.draw(4)

    Logger.log 'Choosing mulligan for coin toss winner'
    @current_player.mulligan

    Logger.log 'Choosing mulligan for coin toss loser'
    @other_player.mulligan

    Logger.log 'Adding coin card to coin toss loser'
    @other_player.add_card(Cards.get('The Coin'))

    while @game_running do
      Logger.log 'Starting turn for ' + @current_player.name
      Logger.log @current_player.name + ' has ' + @current_player.health.to_s + ' health.'
      @current_player.draw
      @current_player.add_mana_crystal
      @current_player.start_round

      Logger.log 'Performing AI'
      @current_player.play

      Logger.log 'Checking if everyone is still alive'
      if @current_player.dead?
        @winning_player = @other_player
        @game_running = false
      elsif @other_player.dead?
        @winning_player = @current_player
        @game_running = false
      end

      @current_player.end_turn

      Logger.log 'Ending turn'
      temp = @other_player
      @other_player = @current_player
      @current_player = temp

      @rounds += 1
    end

    Logger.log @winning_player.name + ' has won the game in ' + @rounds.to_s + ' rounds!'
    @winning_player.wins += 1
    number_of_completed_games += 1
    if number_of_completed_games % (number_of_games / 100 + 1) == 0 and number_of_games >= 100000
      puts @player1.name + ' has ' + (@player1.wins.to_f / number_of_completed_games * 100).to_s + ' game wins and ' +
               (@player1.coin_wins.to_f / number_of_completed_games * 100).to_s + ' coin toss wins at ' +
               number_of_completed_games.to_s + '.'
      puts @player2.name + ' has ' + (@player2.wins.to_f / number_of_completed_games * 100).to_s + ' game wins and ' +
               (@player2.coin_wins.to_f / number_of_completed_games * 100).to_s + ' coin toss wins at ' +
               number_of_completed_games.to_s + '.'
    end
  end
  puts @player1.name + ' ended with ' + (@player1.wins.to_f / number_of_games * 100).to_s + ' game wins and ' +
           (@player1.coin_wins.to_f / number_of_games * 100).to_s + ' coin toss wins.'
  puts @player2.name + ' ended with ' + (@player2.wins.to_f / number_of_games * 100).to_s + ' game wins and ' +
           (@player2.coin_wins.to_f / number_of_games * 100).to_s + ' coin toss wins.'
end

Logger.log 'Starting Hearthstone Deckbuilder'

Logger.log 'Creating first player'
@player1 = Players.get(name: 'Aggro Bot')

Logger.log 'Creating second player'
@player2 = Players.get(name: 'Aggro Bot')

Logger.log 'Assigning deck to first player'
@player1.deck = Decks.get(name: 'Murloc Warlock')

Logger.log 'Assigning deck to second player'
@player2.deck = Decks.get(name: 'Reynad Warrior')

@player1.set_opponent(@player2)
@player2.set_opponent(@player1)

number_of_games = 10000
player1_deck_mutations = 0

if player1_deck_mutations > 0
  player1_deck_mutations.times do
    pp @player1.deck.base_cards
    play_games(number_of_games)
    @player1.deck.mutate
  end
else
  play_games(number_of_games)
end

