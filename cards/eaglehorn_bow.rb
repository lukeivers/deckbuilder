require './cards/weapon'

class EaglehornBow < Weapon
  def initialize
    @cost = 3
    @name = 'Eaglehorn Bow'
    @attack = 3
    @durability = 2
    @deck_class = 'Hunter'
	#Whenever a Secret is played, gain +1 durability
    super
  end

  def play(player)
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
