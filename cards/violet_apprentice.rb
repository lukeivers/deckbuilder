require './cards/minion'

class VioletApprentice < Minion
  def initialize
    super
    self.name = 'Violet Apprentice'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
  end
end
