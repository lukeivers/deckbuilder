require './cards/minion'

class DefenderOfArgus < Minion
  attr_accessor :m1, :m2, :m1_original_taunt, :m2_original_taunt
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
    @m1 = nil
    @m2 = nil
    if index == 0
      if minions.size > 1
        @m1 = minions[1]
        if minions.size > 2
          @m2 = self.owner.minions[-1]
        end
      end
    else
      @m1 = minions[index - 1]
      if minions.size > 2
        if index == minions.size - 1
          @m2 = minions[0]
        else
          @m2 = minions[index + 1]
        end
      end
    end
    if @m1
      @m1_original_taunt = @m1.taunt
      @m1.taunt = true
      @m1.add_attack 1
      @m1.add_max_health 1
    end
    if @m2
      @m2_original_taunt = @m2.taunt
      @m2.taunt = true
      @m2.add_attack 1
      @m2.add_max_health 1
    end
	end

  def die
    if @m1 and not @m1.dead?
      if not @m1_original_taunt
        @m1.taunt = false
      end
      @m1.add_attack(-1)
      @m1.add_max_health(-1)
    end
    if @m2 and not @m2.dead?
      if not @m2_original_taunt
        @m2.taunt = false
      end
      @m2.add_attack(-1)
      @m2.add_max_health(-1)
    end
    super
  end
end
