require './cards/spell'

class Bananas < Spell
  def initialize
    super
    self.cost = 1
    self.name = 'Bananas'
  end

  def battlecry
    target = Array.new.concat(owner.minions).concat(owner.opponent.minions).shuffle.first
    if target
      target.attack += 1
      target.max_health += 1
    end
  end
end
