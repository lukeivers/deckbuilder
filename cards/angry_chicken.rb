require './minion'

class AngryChicken < Minion
  def initialize
    super
    self.cost = 1
    self.name = 'Angry Chicken'
    self.attack = 1
    self.max_health = 1
  end

  def attack
    result = super
    if health < max_health
      result + 5
    else
      result
    end
  end
end
