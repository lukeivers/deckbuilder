require './cards/secret'

class ExplosiveTrap < Secret
  def initialize
    @cost = 2
    @name = 'Explosive Trap'
    @deck_class = 'Hunter'
	  @secret = true
	  #When your hero is attacked, deal 2 damage to all enemies
    super
  end

  def play(player)
    super
    self.owner.add_attack_hook(self)
  end

  def on_attack(player, amount, source)
    player.remove_attack_hook(self)
    targets = Array.new
    targets.concat player.opponent.minions
    targets << player.opponent
    targets.each do |target|
      #TODO: are secrets subject to spell damage increases?
      target.deal_damage(2)
    end
    0
  end
end
