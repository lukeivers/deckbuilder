require './cards/weapon'

class EaglehornBow < Weapon
  def initialize
    self.cost = 3
    self.name = 'Eaglehorn Bow'
    self.attack = 3
    self.durability = 2
    self.deck_class = 'Hunter'
	#Whenever a Secret is played, gain +1 durability
    super
  end

  def battlecry
    super
    owner.game.add_hook(:secret, self)
  end

  def receive_event(type, source)
    if type == :secret
      self.durability += 1
    end
  end

  def destruct
    owner.game.remove_hook(:secret, self)
    super
  end
end
