require './deck'

class WarriorDeck < Deck
  def initialize
    @deck_class = 'Warrior'
    super
  end
  def hero_power(player)
    super
    player.mana -= 2
	  player.armour += 2
  end
end
