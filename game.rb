require './hookable'
require './logger'

class Game
  include Hookable
  attr_accessor :minion_cost

  def initialize
    super
    self.minion_cost = 0
  end

  def self.play(opts = {})
    opts[:number_of_games].times do
      self.new.play(opts[:game_opts])
    end
    puts player1.name + ' won ' + (player1.wins.to_f / number_of_games * 100).to_s + '% of the games.'
    puts player2.name + ' won ' + (player2.wins.to_f / number_of_games * 100).to_s + '% of the games.'
  end

  def play(opts)
    $game = self
    game_running = true
    winning_player = nil
    rounds = 0

    player1 = opts[:player1]
    player2 = opts[:player2]

    player1.start_game self
    player2.start_game self

    Logger.log 'Flipping coin'
    current_player = nil
    other_player = nil

    coin = rand(2)
    if coin == 0
      current_player = player1
      other_player = player2
      Logger.log 'Player 1 won the toss'
    else
      current_player = player2
      other_player = player1
      Logger.log 'Player 2 won the toss'
    end

    Logger.log 'Drawing cards for coin toss winner'
    current_player.draw(3)

    Logger.log 'Drawing cards for coin toss loser'
    other_player.draw(4)

    Logger.log 'Choosing mulligan for coin toss winner'
    current_player.mulligan

    Logger.log 'Choosing mulligan for coin toss loser'
    other_player.mulligan

    Logger.log 'Adding coin card to coin toss loser'
    other_player.add_card Cards.get(name: 'The Coin')
    puts other_player.name

    while game_running do
      Logger.log 'Starting turn for ' + current_player.name
      Logger.log current_player.name + ' has ' + current_player.health.to_s + ' health.'
      current_player.draw
      current_player.start_turn

      Logger.log 'Performing AI'
      current_player.play

      Logger.log 'Checking if everyone is still alive'
      if current_player.dead?
        winning_player = other_player
        game_running = false
      elsif other_player.dead?
        winning_player = current_player
        game_running = false
      end

      current_player.end_turn

      Logger.log 'Ending turn'
      temp = other_player
      other_player = @current_player
      current_player = temp

      rounds += 1
    end

    winning_player.wins += 1
    Logger.log winning_player.name + ' has won the game in ' + rounds.to_s + ' rounds!'

  end
end