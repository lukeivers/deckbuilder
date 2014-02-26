class MinionGroup < Array
  attr_accessor :owner, :attack_bonus, :health_bonus

  def initialize
    self.attack_bonus = { :all => 0, 'Beast' => 0, 'Murloc' => 0, 'Demon' => 0, 'Pirate' => 0 }
    self.health_bonus = { :all => 0, 'Beast' => 0, 'Murloc' => 0, 'Demon' => 0, 'Pirate' => 0 }
  end

  def owner=(player)
    @owner = player
  end

  def by_type(type)
    select {|minion| minion.type == type}
  end

  def has_taunt?
    self.find do |minion|
      minion.taunt
    end
  end

  def targetable(opts = {})
    result = nil
    if has_taunt? and not opts[:evades_taunt]
      result = self.select do |minion|
        minion.taunt and not minion.stealth
      end
    else
      result = self.select do |minion|
        not minion.stealth
      end
    end
    if opts[:source]
      result.delete opts[:source]
    end
    result
  end

  def destroy_all
    self.each do |minion|
      owner.destroy_minion(minion)
    end
  end

  def adjacent_attack_bonus(minion)
    m1, m2 = adjacent_minions minion
    bonus = 0
    if m1
      if m1.adjacent_bonus[:attack]
        bonus += m1.adjacent_bonus[:attack]
      end
    end
    if m2
      if m2.adjacent_bonus[:attack]
        bonus += m2.adjacent_bonus[:attack]
      end
    end
    bonus
  end

  def adjacent_health_bonus(minion)
    bonus = 0
    m1, m2 = adjacent_minions minion
    if m1
      if m1.adjacent_bonus[:health]
        bonus += m1.adjacent_bonus[:health]
      end
    end
    if m2
      if m2.adjacent_bonus[:health]
        bonus += m2.adjacent_bonus[:health]
      end
    end
    bonus
  end

  def adjacent_minions(minion)
    minion_index = find_index(minion)
    m1 = nil
    m2 = nil
    if minion_index == 0
      if size > 1
        m1 = self[1]
        if size > 2
          m2 = self[-1]
        end
      end
    else
      m1 = self[minion_index - 1]
      if size > 2
        if minion_index == size - 1
          m2 = self[0]
        else
          m2 = self[minion_index + 1]
        end
      end
    end
    [m1, m2]
  end
end