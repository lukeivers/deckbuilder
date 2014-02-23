require './cards/secret'

class Misdirection < Secret
  def initialize
    self.cost = 2
    self.name = 'Misdirection'
    self.deck_class = 'Hunter'
	  self.secret = true
	#When a character attacks your hero, instead he attacks another random character
    super
  end

  def battlecry
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
