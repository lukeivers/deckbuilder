require './deck'

class MageDeck < Deck
  def initialize
    @deck_class = 'Mage'
    super
  end
  def hero_power(player)
    super
    player.remove_mana(2)
    player.best_target(1, true).deal_damage(1)
  end
end