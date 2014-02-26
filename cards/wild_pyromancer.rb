require './minion'

class WildPyromancer < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 3
    self.max_health = 2
    self.name = "Wild Pyromancer"
  end

  def play(player)
    super
    $game.add_hook :spell_cast, self
  end

  def die
    super
    $game.remove_hook :spell_cast, self
  end

  def on_spell_cast(opts = {})
    if opts[:source].owner == owner
      Array.new.concat(owner.minions).concat(owner.opponent.minions).each do |minion|
        minion.deal_damage damage: 1
      end
    end
  end

end
