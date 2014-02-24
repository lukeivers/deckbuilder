require './cards/minion'

class MillhouseManastorm < Minion
  attr_accessor :old_spell_cost

  def initialize
    super
    self.cost = 2
    self.name = 'Millhouse Manastorm'
    self.attack = 4
    self.max_health = 4
    self.legendary = true
  end

  def battlecry
    super
    self.old_spell_cost = owner.opponent.spell_cost
    owner.opponent.spell_cost = -1
  end

  def start_turn
    owner.opponent.spell_cost = old_spell_cost
  end
end
