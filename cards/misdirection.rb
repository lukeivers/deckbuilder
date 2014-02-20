require './cards/secret'

class Misdirection < Secret
  def initialize
    @cost = 2
    @name = 'Misdirection'
    @deck_class = 'Hunter'
	  @secret = true
	#When a character attacks your hero, instead he attacks another random character
    super
  end

  def play(player)
    super
    self.owner.add_attack_hook(self)
  end

  def on_attack(player, amount, source)
    targets = Array.new
    targets.concat player.minions
    targets.concat player.opponent.minions
    targets << player.opponent
    targets.shuffle.first.deal_damage(amount, source)
    player.remove_attack_hook(self)
    (0 - amount)
  end

end
