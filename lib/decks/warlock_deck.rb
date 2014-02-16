require './deck'

class WarlockDeck < Deck
  def initialize
    @deck_class = 'Warlock'
    super
  end
  def hero_power(player)
    super
    player.remove_mana(2)
    player.draw(1)
	#hero also takes 2 damage
  end
end
