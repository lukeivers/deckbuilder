require './cards/spell'

class Polymorph < Spell
  def initialize
    self.cost = 4
    self.name = 'Polymorph'
    self.deck_class = 'Mage'
    super
  end
  def battlecry
    target = player.best_smurfing_target
    return if target == nil
    super
    target.attack = 1
    target.max_health = 1
    target.health = 1
    target.name = 'Sheep'
  end
end