require './cards/secret'

class Misdirection < Secret
  def initialize
    self.cost = 2
    self.name = 'Misdirection'
    self.deck_class = 'Hunter'
	  self.secret = true
    super
  end

  def battlecry
    super
    $game.add_hook :attacked, self
  end

  def on_attack(opts = {})
    if opts[:target] == owner
      owner.armour += opts[:damage]
      owner.random_target(include_friendly: true, include_opponent: true).deal_damage(opts)
      $game.remove_hook :attacked, self
    end
  end

end
