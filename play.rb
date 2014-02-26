require './logger'
require './game'
require 'pp'

if ARGV[0] == 'logger'
  Logger.debug = true
end

Dir["./players/*.rb"].each { |file| require file }

Logger.log 'Starting Hearthstone Deckbuilder'

player1 = AggroBot.new deck: 'Murloc Warlock'
player2 = AggroBot.new deck: 'Shieldbearer', opponent: player1

Game.play number_of_games: 1000, game_opts: { player1: player1, player2: player2 }