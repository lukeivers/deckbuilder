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

  def on_attacked(opts = {})
    if opts[:target] == owner
      $game.fire_hook :secret_revealed, source: self
      $game.remove_hook :attacked, self
      owner.armour += opts[:damage]
      owner.random_target(evades_taunt: true, include_friendly: true, include_opponent: true).deal_damage(opts)
    end
  end

end
