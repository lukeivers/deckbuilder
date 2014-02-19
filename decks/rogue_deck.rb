require './deck'

class RogueDeck < Deck
  def initialize
    @deck_class = 'Rogue'
    super
  end
  def hero_power(player)
    super
    player.remove_mana(2)
	#gain 1/2 dagger
  end
end
