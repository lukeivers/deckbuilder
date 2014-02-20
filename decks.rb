require './deck'
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
end