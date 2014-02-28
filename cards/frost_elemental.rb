require './minion'

class FrostElemental < Minion
  def initialize
    super
    self.cost = 6
    self.attack = 5
    self.max_health = 5
    self.name = "Frost Elemental"
  end

  def battlecry
    super
    owner.freeze_character
  end
end
