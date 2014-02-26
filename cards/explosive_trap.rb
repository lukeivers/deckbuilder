require './secret'

class ExplosiveTrap < Secret
  def initialize
    self.cost = 2
    self.name = 'Explosive Trap'
    self.deck_class = 'Hunter'
	  self.secret = true
    self.damage = 2
	  #When your hero is attacked, deal 2 damage to all enemies
    super
  end

  def battlecry
    super
    $game.add_hook :attacked, self
  end

  def on_attacked(opts)
    if opts[:target] == owner
      $game.fire_hook :secret_revealed, source: self
      $game.remove_hook :attacked, self
      targets = Array.new.concat(owner.opponent.minions) << owner.opponent
      targets.each do |target|
        target.deal_damage damage: damage
      end
    end
  end
end
