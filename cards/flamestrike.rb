require './cards/spell'

class Flamestrike < Spell
  def initialize
    self.cost = 7
    self.name = 'Flamestrike'
    self.damage = 4
    self.deck_class = 'Mage'
    super
  end
  def battlecry
    player.opponent.minions.each do |minion|
      minion.deal_damage(self.damage + player.spell_damage)
    end
  end
end