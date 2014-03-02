require './player'

class AggroBot < Player
  def initialize(opts = {})
    @name = 'Aggro Bot'
    super
  end

  def choose_best_card(cards)
    #TODO: implement aggro_bot choose_best_card
    #super
  end

  def best_silence_target
    #TODO: implement simple_bot best silence target
    #super
  end

  def choose_best_heal_target(opts = {})
    self
    #TODO: make choose_best_heal_target realistic
  end

  def choose_minion_to_return
    minions.first
    #TODO: make choose_minion_to_return realistic
  end

  def choose_best_stat_swap_minion
    possibles = Array.new.concat(self.minions).concat(self.opponent.minions)
    possibles.sort {|a, b| a.attack <=> b.attack}.reverse.first
  end

  def choose_best_freeze_target
    opponent.targets.sort {|a, b| a.attack <=> b.attack}.reverse.first
  end

  def choose_best_copy_target
    targets = Array.new.concat(self.minions).concat(opponent.minions)
    targets.sort {|a, b| a.attack <=> b.attack}.reverse.first
  end

  def choose_bonus_minion(opts = {})
    bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.last
    if opts[:health] and opts[:health] > 0
      bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.first
    end
    bonus_minion
  end

  def best_target(opts = {})
    targets = determine_targets(opts)
    if targets.include? opponent
      return opponent
    end
    targets.sort {|a, b| a.health <=> b.health}
    target = targets.first
    targets.each do |potential_target|
      if potential_target.health <= opts[:damage]
        target = potential_target
      end
    end
    target
  end

  def best_smurfing_target
    targets = determine_targets(true)
    targets.delete @opponent
    targets.sort {|a, b| a.attack <=> b.attack}
    targets.last
  end

  def choose_adjacent_targets(opts = {})
    index = minions.find_index(opts[:source])
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
    [m1, m2]
  end

  def mulligan
    #one_mana = nil
    #two_mana = nil
    #three_mana = nil
    #number_discards = 0
    #@hand.each do |card|
    #  if card.cost > 3 or (card.cost == 1 and one_mana) or (card.cost == 2 and two_mana) or (card.cost == 3 and three_mana)
    #    @deck.add_card(card)
    #    @hand.delete card
    #    number_discards += 1
    #  end
    #  if card.cost == 1
    #    one_mana = card
    #  elsif card.cost == 2
    #    two_mana = card
    #  elsif card.cost == 3
    #    three_mana = card
    #  end
    #end
    #self.draw(number_discards)
  end

  def play
    @hand.sort { |a, b| a.cost <=> b.cost }
    @hand.reverse.each do |card|
      if card.name == 'The Coin'
        if self.hand.find { |card| card.cost == self.mana + 1 }
          card.play(self)
          @hand.delete(card)
        end
      elsif @mana > card.cost
        card.play(self)
        @hand.delete(card)
        break if opponent.dead?
      end
    end

    return if opponent.dead?

    if deck.deck_class == "Warlock" && self.mana >= 2 && self.health >= 15 && self.hand.size < 10
      Logger.log @name + ' used its hero power.'
    	self.deck.hero_power(self)
    end
    if deck.deck_class != "Warlock" && self.mana >= 2
      Logger.log @name + ' used its hero power.'
    	self.deck.hero_power(self)
    end

    return if opponent.dead?

    if @minions.size > 0

      @minions.each do |minion|
        if minion.can_attack?
          target = best_target(damage: minion.attack, include_opponent: true)
          minion.attack_target(target: target)
          break if opponent.dead?
        end
      end
    end

    return if opponent.dead?

    if self.attack > 0
      if can_attack?
        target = best_target(damage: self.attack, include_opponent: true)
        self.attack_target(target: target)
      end
    end
  end

end







