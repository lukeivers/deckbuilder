require './deck'

class RogueDeck < Deck
  def initialize
    @deck_class = 'Rogue'
    super
  end

  def hero_power(player)
    super
    player.mana -= 2
    player.weapon = Weapon.new(attack: 1, durability: 2, owner: player)
  end
end
