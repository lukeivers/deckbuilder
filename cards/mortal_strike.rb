require './cards/spell'

class MortalStrike < Spell
  def initialize
    @cost = 4
    @name = 'Mortal Strike'
    @damage = 4
    @deck_class = 'Warrior'
    super
  end
  def play(player)
    super
    if owner.health <= 12
      @damage = 6
    end
    owner.best_target(self.damage, true).deal_damage(self.damage)
	#Deal 4 damage.  If your Hero has 12 or less health, deal 6 damage instead
    end
  end
