require './cards/weapon'

class EaglehornBow < Weapon
  def initialize
    super
    self.cost = 3
    self.name = 'Eaglehorn Bow'
    self.attack = 3
    self.durability = 2
    self.deck_class = 'Hunter'
  end

  def battlecry
    super
    $game.add_hook(:secret_reveal, self)
  end

  def on_secret(opts = {})
    self.durability += 1
  end

  def destruct
    super
    $game.remove_hook(:secret_reveal, self)
  end
end
