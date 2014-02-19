require './deck'

class HunterDeck < Deck
  def initialize
    @deck_class = 'Hunter'
    super
  end
  def hero_power(player)
    super
    player.remove_mana(2)
	#Deal 2 damage to the enemy hero
  end
end
