require './minion'

class GnomishInventor < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Gnomish Inventor'
    self.attack = 2
    self.max_health = 4
  end

  def battlecry
    super
    owner.draw 1
  end
end