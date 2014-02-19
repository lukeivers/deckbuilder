require './deck'

class RogueDeck < Deck
  def initialize
    @deck_class = 'Rogue'
    super
  end
  def hero_power(player)
    super
    player.remove_mana(2)
    player.set_weapon(Weapon.new(attack: 1, durability: 2))
  end
end
