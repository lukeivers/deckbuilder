require './deck'

class HunterDeck < Deck
  def initialize
    @deck_class = 'Hunter'
    super
  end
  def hero_power(player)
    super
    player.mana -= 2
    player.opponent.deal_damage damage: 2
  end
end
