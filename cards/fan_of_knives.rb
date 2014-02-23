require './cards/spell'

class FanOfKnives < Spell
  def initialize
    self.cost = 3
    self.name = 'Fan of Knives'
    self.damage = 1
    self.deck_class = 'Rogue'
    super
  end
  def battlecry
    super
    self.owner.opponent.minions.each do |minion|
      minion.deal_damage(self.damage)
    end
  end
  end
