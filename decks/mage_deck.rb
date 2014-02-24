require './deck'

class MageDeck < Deck
  def initialize
    @deck_class = 'Mage'
    super
  end
  def hero_power(player)
    super
    player.mana -= 2
    player.cast_damage_spell(damage: 1, evades_taunt: true)
  end
end