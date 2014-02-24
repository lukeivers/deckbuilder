require './cards/spell'

class Polymorph < Spell
  def initialize
    super
    self.cost = 4
    self.name = 'Polymorph'
    self.deck_class = 'Mage'
  end

  def battlecry
    super
    target = owner.best_smurfing_target
    if target
      target.attack = 1
      target.set_health 1
      target.set_max_health = 1
      target.name = 'Sheep'
    end
  end
end