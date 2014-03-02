require './minion'

class FacelessManipulator < Minion
  def initialize
    super
    self.name = "Faceless Manipulator"
    self.cost = 5
    self.attack = 3
    self.max_health = 3
  end

  def battlecry
    super
    target = owner.choose_best_copy_target
    if target and target != self
      new_card = target.dup
      owner.summon(new_card)
      owner.destroy_minion(self)
    end
	end
end
