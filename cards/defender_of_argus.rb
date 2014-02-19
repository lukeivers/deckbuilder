require './cards/minion'

class DefenderOfArgus < Minion
  def initialize
    @cost = 4
    @name = 'Defender of Argus'
    @attack = 2
    @max_health = 3
    super
  end
  def play(player)
    super
    minions = self.owner.minions
    index = minions.find_index(self)
    m1 = nil
    m2 = nil
    if index == 0
      if minions.size > 1
        m1 = minions[1]
        if minions.size > 2
          m2 = self.owner.minions[-1]
        end
      end
    else
      m1 = minions[index - 1]
      if minions.size > 2
        if index == minions.size - 1
          m2 = minions[0]
        else
          m2 = minions[index + 1]
        end
      end
    end
    if m1
      m1.taunt = true
      m1.add_attack 1
      m1.add_max_health 1
    end
    if m2
      m2.taunt = true
      m2.add_attack 1
      m2.add_max_health 1
    end
	end

end
