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
    puts opts[:game_opts][:player1].name + ' won ' + (opts[:game_opts][:player1].wins.to_f / opts[:number_of_games] * 100).to_s + '% of the games.'
    puts opts[:game_opts][:player2].name + ' won ' + (opts[:game_opts][:player2].wins.to_f / opts[:number_of_games] * 100).to_s + '% of the games.'
  end

  def play(opts)
    $game = self
    game_running = true
    winning_player = nil
    losing_player = nil
    rounds = 0

    player1 = opts[:player1]
    player2 = opts[:player2]

    player1.start_game self
    player2.start_game self

    current_player = nil
    other_player = nil

    coin = rand(2)
    if coin == 0
      current_player = player1
      other_player = player2
      Logger.log current_player.name + ' won the coin toss'
    else
      current_player = player2
      other_player = player1
      Logger.log current_player.name + ' won the coin toss'
    end

    current_player.draw(3)
    other_player.draw(4)
    current_player.mulligan
    other_player.mulligan

    other_player.add_card Cards.get(name: 'The Coin')

    while game_running do
      current_player.draw
      current_player.start_turn

      current_player.play

      if current_player.dead?
        winning_player = other_player
        losing_player = current_player
        game_running = false
      elsif other_player.dead?
        winning_player = current_player
        losing_player = other_player
        game_running = false
      end

      current_player.end_turn

      temp = other_player
      other_player = current_player
      current_player = temp

      rounds += 1
    end

    winning_player.win
    losing_player.lose
    Logger.log winning_player.name + ' has won the game in ' + rounds.to_s + ' rounds!'

  end
end