require './cards/spell'

class KillCommand < Spell
  def initialize
    self.cost = 3
    self.name = 'Kill Command'
    self.damage = 3
    self.deck_class = 'Hunter'
    super
  end
  def battlecry
    super
    if owner.minions.find {|minion| minion.type == 'Beast'}
      self.damage += 2
    end
    owner.best_target(damage, true).deal_damage(damage)
  end
end
