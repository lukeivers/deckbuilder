require './deck'

class WarlockDeck < Deck
  def initialize
    @deck_class = 'Warlock'
    super
  end
  def hero_power(player)
    super
    player.mana -= 2
    player.draw 1
	  player.deal_damage damage: 2
  end
end
