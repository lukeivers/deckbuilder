require './cards'
require './card'
require 'sequel'

class Deck
  attr_accessor :deck_class, :base_cards, :cards, :name

  def initialize(opts = {})
    db = Sequel.sqlite('deckbuilder.db')
    decks = db[:decks]
    if decks.where(base_cards: my_cards).first.nil?
      decks.insert(base_cards: my_cards)
    end
    db.disconnect
    self.init_cards
  end

  def init_cards
    @cards = Array.new
    @base_cards.each do |card_ref|
      @cards.concat Cards.get(card_ref)
    end
    self.shuffle
  end

  def my_cards
    @base_cards.sort_by {|a| a[:name] }.map {|a| "#{a[:name]}:#{a[:amount]}"}.join(", ")
  end

  def win
    db = Sequel.sqlite('deckbuilder.db')
    decks = db[:decks]
    deck = decks.where(base_cards: my_cards).first
    plays = deck[:plays]
    wins = deck[:wins]
    Logger.log "Plays: #{plays}, Wins: #{wins}"
    decks.where(base_cards: my_cards).update(plays: plays + 1, wins: wins + 1)
    db.disconnect
  end

  def lose
    db = Sequel.sqlite('deckbuilder.db')
    decks = db[:decks]
    deck = decks.where(base_cards: my_cards).first
    plays = deck[:plays]
    losses = deck[:losses]
    Logger.log "Plays: #{plays}, Losses: #{losses}"
    decks.where(base_cards: my_cards).update(plays: plays + 1, losses: losses + 1)
    db.disconnect
  end

  def shuffle
    @cards.shuffle!
  end

  def draw(amount)
    @cards.slice!(0, amount)
  end

  def add_card(card)
    @cards << card
  end

  def hero_power(player)
  end

  def mutate
    replacement = Cards.get_random(self)
    tuple = @base_cards.slice!(rand(@base_cards.size))
    @base_cards << { name: replacement.name, amount: tuple[:amount]}
  end

  def new_mutation
    db = Sequel.sqlite('deckbuilder.db')
    decks = db[:decks]
    existing_deck = true
    while existing_deck do
      mutate
      if decks.where(base_cards: my_cards).first.nil?
        existing_deck = false
        decks.insert(base_cards: my_cards)
        break
      end
      puts 'Found deck.  Re-mutating'
    end
    db.disconnect
  end

  def include?(card)
    found = @base_cards.find {|bcard| bcard[:name] == card.name}
    if found.nil?
      false
    else
      true
    end
  end
end