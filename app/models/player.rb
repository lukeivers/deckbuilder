class Player < ActiveRecord::Base
  serialize :deck, Deck
  serialize :hand, Hand

  def set_deck(deck_database_deck)
    self.deck = Deck.new(deck_database_deck)
  end

  def draw(num = 1)
    self.hand.add(self.current_deck.slice!(0, num))
  end

  def first_draw(num)
    drawn_cards = self.current_deck.slice!(0, num)
    # code for mulligan goes here
    self.hand.add(drawn_cards)
  end

  def add_coin
    self.hand.add(CardDatabaseCard.get('The Coin'))
  end
end
