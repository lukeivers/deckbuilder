require './cards/spell'

class MortalStrike < Spell
  def initialize
    self.cost = 4
    self.name = 'Mortal Strike'
    self.damage = 4
    self.deck_class = 'Warrior'
    super
  end
  def battlecry
    super
    if owner.health <= 12
      self.damage = 6
    end
    owner.best_target(self.damage, true).deal_damage(self.damage)
	#Deal 4 damage.  If your Hero has 12 or less health, deal 6 damage instead
    end
  end
