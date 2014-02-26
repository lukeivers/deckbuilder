require './logger'
require './game'
require 'pp'

Dir["./players/*.rb"].each { |file| require file }

if ARGV.find_index '-l'
  Logger.debug = true
end

number_of_games = 1000
if ARGV.find_index '-n'
  index = ARGV.find_index '-n'
  if ARGV.size > index + 1
    number_of_games = ARGV[index + 1].to_i
  end
end

Logger.log 'Starting Hearthstone Deckbuilder'

player1 = AggroBot.new deck: 'Murloc Warlock'
player2 = AggroBot.new deck: 'Murloc Warlock', opponent: player1

Game.play number_of_games: number_of_games, game_opts: { player1: player1, player2: player2 }