require './character'
require './card'

class Minion < Card
  include Character
  attr_accessor :summoning_sickness, :taunt, :spell_damage, :stealth, :charge, :divine_shield, :type
  attr_accessor :legendary, :silenced, :minion_group, :targetable, :windfury, :first_attack, :second_attack

  def initialize
    super
    self.spell_damage = 0
    self.summoning_sickness = true
    self.targetable = true
    self.first_attack = false
    self.second_attack = false
  end

  def play(player)
    super
    owner.add_minion(self)
    battlecry if not silenced
  end

  def start_turn
    super
    self.summoning_sickness = false
    self.first_attack = false
    self.second_attack = false
  end

  ##############################
  # custom setters and getters #
  ##############################

  def charge=(value)
    self.summoning_sickness = false if value
    @charge = value
  end

  def max_health
    if minion_group
      result = super
      result += minion_group.health_bonus[:all]
      if type
        result += minion_group.health_bonus[type]
      end
      result += minion_group.adjacent_health_bonus(self)
    else
      result = super
    end
    result
  end

  def attack
    if minion_group
      result = super
      result += minion_group.attack_bonus[:all]
      if type
        result += minion_group.attack_bonus[type]
      end
      result += minion_group.adjacent_attack_bonus(self)
    else
      result = super
    end
    result
  end

  def health=(amount)
    if amount < health and $game
      $game.fire_hook :minion_damage, source: self
    end
    super
  end

  def cost
    if owner
      super + $game.minion_cost + owner.minion_cost
    else
      super
    end
  end

  def set_health(amount)
    @health = amount
  end

  def set_max_health(amount)
    @max_health = amount
  end

  ##########
  # combat #
  ##########

  def can_attack?
    if summoning_sickness
      false
    elsif second_attack
      false
    elsif first_attack and not windfury
      false
    else
      true
    end
  end

  def attack_target(opts = {})
    super(opts)
    self.stealth = false
    if not first_attack
      self.first_attack = true
    elsif not second_attack
      self.second_attack = true
    end
  end

  def deal_damage(opts = {})
    if divine_shield
      opts[:amount] = 0
      self.divine_shield = false
    end
    damage = super(opts)
    if damage > 0
      $game.fire_hook :minion_damage, source: self, amount: opts[:damage], damage_source: opts[:source]
    end
    damage
  end

  def die
    super
    owner.destroy_minion self
    deathrattle if not silenced
  end

  ###################
  # minion-specific #
  ###################

  def silence
    self.taunt = false
    self.silenced = true
    $game.remove_hooks_for source: self
  end

  def minion?
    true
  end

  def deathrattle
  end

  def battlecry
  end

  def adjacent_bonus
    Hash.new
  end

  def to_s
    "#{self.name}: #{self.attack}/#{self.health}"
  end
end