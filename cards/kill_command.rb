require './cards/spell'

class KillCommand < Spell
  def initialize
    @cost = 3
    @name = 'Kill Command'
    @damage = 3
    @deck_class = 'Hunter'
    super
  end
  def play(player)
    super
    if owner.minions.find {|minion| minion.type == 'Beast'}
      @damage += 2
    end
    owner.best_target(damage, true).deal_damage(damage)
  end
end
