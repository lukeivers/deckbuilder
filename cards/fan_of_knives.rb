require './spell'

class FanOfKnives < Spell
  def initialize
    super
    self.cost = 3
    self.name = 'Fan of Knives'
    self.damage = 1
    self.deck_class = 'Rogue'
  end
  def battlecry
    super
    owner.opponent.minions.each do |minion|
      minion.deal_damage(self.damage)
    end
  end
end
