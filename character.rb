module Character
  attr_accessor :health, :max_health, :attack, :frozen, :thawing, :name, :temporary_attack

  def initialize(opts = {})
    self.attack = 0
    self.temporary_attack = 0
    self.max_health = 0
    self.frozen = false
    self.thawing = false
  end

  def start_turn
    if frozen and not thawing
      self.thawing = true
    elsif thawing
      thaw
    end
  end

  def end_turn
    if temporary_attack > 0
      self.attack -= temporary_attack
      self.temporary_attack = 0
    end
  end

  ##############################
  # custom setters and getters #
  ##############################

  def health=(amount)
    if self.health
      if amount <= 0
        die
      end
      if amount > self.health and $game
        $game.fire_hook :heal, target: self
      end
    end
    @health = amount
  end

  def max_health=(amount)
    if self.max_health and self.health
      differential = self.max_health - amount
      self.health -= differential
    end
    if not health
      @health = amount
    end
    @max_health = amount
  end

  def attack
    @attack + @temporary_attack
  end

  ##########
  # combat #
  ##########

  def attacked(opts = {})
    $game.fire_hook :attacked, opts.merge({target: self})
    Logger.log self.name + ' was attacked by ' + (opts[:source].nil? ? '.' : opts[:source].name + '.')
    if opts[:response].nil?
      attack_target target: opts[:source], response: true
    end
    deal_damage damage: opts[:damage], source: opts[:source]
  end

  def can_attack?
    not frozen
  end

  def attack_target(opts = {})
    Logger.log self.name + ' is attacking ' + opts[:target].name
    opts[:target].attacked(damage: attack, source: self, response: opts[:response])
  end

  def deal_damage(opts = {})
    Logger.log self.name + ' was dealt ' + opts[:damage].to_s + ' damage'  + (opts[:source].nil? ? '.' : opts[:source].name + '.')
    self.health -= opts[:damage]
    opts[:damage]
  end

  def die
    Logger.log self.name + ' died.'
    $game.fire_hook :death, source: self
  end

  ############
  # freezing #
  ############

  def freeze
    self.frozen = true
  end

  def thaw
    self.frozen = false
    self.thawing = false
  end

  #################
  # miscellaneous #
  #################

  def minion?
    false
  end

  def dead?
    health <= 0
  end
end