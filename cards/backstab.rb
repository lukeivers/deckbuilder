require './cards/spell'

class Backstab < Spell
  def initialize
    @cost = 0
    @name = 'Backstab'
    @damage = 2
    @deck_class = 'Rogue'
    super
  end
  def play(player)
    super
    self.owner.best_target(self.damage, true).deal_damage(self.damage)
	end
  end
