require './logger'
require './game'
require 'pp'

Dir["./players/*.rb"].each { |file| require file }

Logger.log 'Starting Hearthstone Deckbuilder'

player1 = SimpleBot.new deck: 'Elven Archer'
player2 = AggroBot.new deck: 'Murloc Warlock', opponent: player1

Game.play number_of_games: 10000, game_opts: { player1: player1, player2: player2 }