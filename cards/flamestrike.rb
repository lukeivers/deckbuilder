require './spell'

class Flamestrike < Spell
  def initialize
    super
    self.cost = 7
    self.name = 'Flamestrike'
    self.damage = 4
    self.deck_class = 'Mage'
  end
  def battlecry
    opponent.minions.each do |minion|
      minion.deal_damage(damage)
    end
  end
end