require './cards/minion'

class AngryChicken < Minion
  def initialize
    super
    self.cost = 1
    self.name = 'Angry Chicken'
    self.attack = 1
    self.max_health = 1
  end

  def attack
    if health < max_health
      attack + 5
    else
      attack
    end
  end
end
