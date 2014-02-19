require './deck'

class WarriorDeck < Deck
  def initialize
    @deck_class = 'Warrior'
    super
  end
  def hero_power(player)
    super
    player.remove_mana(2)
	#gain 2 armor
  end
end
