require './deck'
require 'sequel'
Dir["./decks/*.rb"].each { |file| require file }

class Decks
  @decks = [
      ElvenArcherDeck.new,
      ShieldbearerDeck.new,
      MurlocWarlockDeck.new,
      KithrosRogueDeck.new,
      EricHunterDeck.new,
      ReynadWarriorDeck.new,
  ]

  def self.get(opts = {})
    @decks.find { |deck| deck.name == opts[:name] }
  end

  def self.ratios
    db = Sequel.sqlite('deckbuilder.db')
    decks = db[:decks]
    decks.all.each do |deck|
      puts "Win %: #{deck[:wins].to_f / deck[:plays].to_f * 100}, Loss %: #{deck[:losses].to_f / deck[:plays].to_f * 100}"
    end
    true
  end
end