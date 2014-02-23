require './character'
require './card'

class Minion < Card
  include Character
  attr_accessor :summoning_sickness, :taunt, :spell_damage, :stealth, :charge, :divine_shield, :type
  attr_accessor :legendary, :silenced, :minion_group

  def initialize
    super
    self.spell_damage = 0
    self.summoning_sickness = true
  end

  def play(player)
    super
    owner.add_minion(self)
    battlecry if not silenced
  end

  def start_turn
    super
    summoning_sickness = false
  end

  ##############################
  # custom setters and getters #
  ##############################

  def charge=(value)
    summoning_sickness = false if value
    self.charge = value
  end

  def max_health
    super + minion_group.health_bonus[:all] + minion_group.health_bonus[type] + minion_group.adjact_health_bonus(self)
  end

  def attack
    super + minion_group.attack_bonus[:all] + minion_group.attack_bonus[type] + minion_group.adjact_attack_bonus(self)
  end

  ##########
  # combat #
  ##########

  def can_attack?
    summoning_sickness ? false : super
  end

  def attack_target(target)
    super
    stealth = false
  end

  def deal_damage(opts = {})
    if divine_shield
      opts[:amount] = 0
      divine_shield = false
    end
    damage = super(opts)
    if damage > 0
      $game.fire_hook :minion_damage, source: self, amount: amount, damage_source: source
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
    taunt = false
    silenced = true
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
end